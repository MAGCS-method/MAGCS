import tensorflow as tf
import random
import numpy as np
import Evaluate_Vivado
import os


class VivadoOptimizationActions:
    def __init__(self):
        self.actions = {
            'flatten_hierarchy': ["-flatten_hierarchy full", "-flatten_hierarchy none", "-flatten_hierarchy rebuilt"],
            'gated_clock_conversion': ["-gated_clock_conversion off", "-gated_clock_conversion on", "-gated_clock_conversion auto"],
            'bufg': [f"-bufg {value}" for value in range(1, 20)],
            'directive': ["-directive RuntimeOptimized", "-directive AreaOptimized_high", "-directive AreaOptimized_medium", 
                          "-directive AlternateRoutability", "-directive AreaMapLargeShiftRegToBRAM", "-directive AreaMultThresholdDSP",
                          "-directive FewerCarryChains", "-directive PerformanceOptimized", "-directive LogicCompaction", 
                          "-directive PowerOptimized_high", "-directive PowerOptimized_medium", "-directive Default"],
            'fsm_extraction': ["-fsm_extraction off", "-fsm_extraction one_hot", "-fsm_extraction sequential", 
                               "-fsm_extraction johnson", "-fsm_extraction gray", "-fsm_extraction auto"],
            'resource_sharing': ["-resource_sharing off", "-resource_sharing on", "-resource_sharing auto"],
            'control_set_opt_threshold': [f"-control_set_opt_threshold {value}" for value in range(1, 20)],
            'shreg_min_size': [f"-shreg_min_size {value}" for value in range(1, 20)],
            'max_bram': [f"-max_bram {value}" for value in range(1, 20)],
            'max_uram': [f"-max_uram {value}" for value in range(1, 20)],
            'max_dsp': [f"-max_dsp {value}" for value in range(1, 20)],
            'max_bram_cascade_height': [f"-max_bram_cascade_height {value}" for value in range(1, 20)],
            'max_uram_cascade_height': [f"-max_uram_cascade_height {value}" for value in range(1, 20)],
            'cascade_dsp': ["-cascade_dsp auto", "-cascade_dsp tree", "-cascade_dsp force"],
            'incremental_mode': ["-incremental_mode aggressive", "-incremental_mode default", "-incremental_mode off", "-incremental_mode quick"]
        }
        self.all_operations = list(self.actions.keys())

    def get_action_space(self):
        """Return a list of all available optimization steps."""
        return self.all_operations

    def sample_action(self, operation):
        """Randomly choose a parameter for a given optimization operation and return as an index."""
        if operation in self.actions:
            choice = random.choice(self.actions[operation])
            return self.actions[operation].index(choice)  # Return index instead of string
        return None

    def get_command(self, action):
        """Convert (operation, index) pair to Vivado command string."""
        operation, index = action
        if operation in self.actions and index < len(self.actions[operation]):
            return self.actions[operation][index]
        return ""

    def encode_state(self, state):
        """Convert state to one-hot encoding."""
        encoded_state = [1 if op == state else 0 for op in self.all_operations]
        return np.array(encoded_state, dtype=np.float32)

class MultiAgentA2C(tf.Module):
    def __init__(self, num_agents, v_optimization_actions):
        self.agents = [Agent() for _ in range(num_agents)]
        self.optimizer = tf.keras.optimizers.legacy.Adam(learning_rate=0.001)
        self.v_optimization_actions = v_optimization_actions
        self.action_space = v_optimization_actions.get_action_space()

    def select_actions(self):
        """Select unique actions for each agent."""
        actions = []
        selected_operations = set()  
        for agent in self.agents:
            available_operations = [op for op in self.action_space if op not in selected_operations]
            if not available_operations:
                break
            operation = random.choice(available_operations)
            selected_operations.add(operation)
            parameter = self.v_optimization_actions.sample_action(operation)
            actions.append((operation, parameter))
        

        print("Selected actions (operation, parameter):", actions)
        return actions

    def update_policy(self, state, action, reward, next_state, agent):
        """Perform policy update using A2C."""
        with tf.GradientTape() as tape:
            state_value = agent.value_network(state)
            next_state_value = agent.value_network(next_state)
            advantage = reward + next_state_value - state_value
            action_prob = agent.policy_network(state)  
            loss = -tf.reduce_mean(advantage * tf.math.log(action_prob))  
            loss += tf.reduce_mean(tf.square(advantage))  
        gradients = tape.gradient(loss, agent.trainable_variables)
        self.optimizer.apply_gradients(zip(gradients, agent.trainable_variables))


class Agent(tf.Module):
    def __init__(self):
        self.policy_network = tf.keras.Sequential([
            tf.keras.layers.Dense(128, activation='relu'),
            tf.keras.layers.Dense(64, activation='relu'),
            tf.keras.layers.Dense(1, activation='softmax')
        ])
        self.value_network = tf.keras.Sequential([
            tf.keras.layers.Dense(128, activation='relu'),
            tf.keras.layers.Dense(1)
        ])


class OptimizationEnvironment:
    def __init__(self, v_optimization_actions):
        self.actions = v_optimization_actions
        self.state = None
        self.history = []

    def reset(self):
        """Reset the environment."""
        self.state = random.choice(self.actions.get_action_space())
        self.history = []
        return self.state

    def step(self, action, episode):
        """Perform an action and return reward."""
        reward = self.evaluate_action(action, episode)
        next_state = random.choice(self.actions.get_action_space())  
        return next_state, reward

    def evaluate_action(self, actions, episode):
        command_sequence = "synth_design -top top "  
        v_optimization_actions = VivadoOptimizationActions()  
        for operation, index in actions:
            command = v_optimization_actions.get_command((operation, index))
            command_sequence += command + " "
        print(f"Generated command sequence: {command_sequence.strip()}")


        fault_number, timeout_number = Evaluate_Vivado.Evaluate_main(episode, command_sequence)
        theta = 0.7
        reward = (theta * fault_number / (fault_number + 1)) - ((1 - theta) * timeout_number / (timeout_number + 1))
        print(f"detected_faults: {fault_number}, timeouts: {timeout_number}, reward: {reward}")

        return reward


def train_multi_agent_a2c():
    v_optimization_actions = VivadoOptimizationActions()
    env = OptimizationEnvironment(v_optimization_actions)
    agents = MultiAgentA2C(num_agents=9, v_optimization_actions=v_optimization_actions)

    for episode in range(1000):  
        state = env.reset()
        state_encoded = v_optimization_actions.encode_state(state)  
        state_encoded = tf.expand_dims(state_encoded, axis=0)  
        actions = agents.select_actions()  
        print(f"Episode {episode + 1}, Selected Actions: {actions}")
        next_state, reward = env.step(actions, episode)
        next_state_encoded = v_optimization_actions.encode_state(next_state)
        next_state_encoded = tf.expand_dims(next_state_encoded, axis=0)


        for agent_idx, action in enumerate(actions):
            agents.update_policy(state_encoded, action, reward, next_state_encoded, agents.agents[agent_idx])
        state_encoded = next_state_encoded

if __name__ == "__main__":
    train_multi_agent_a2c()
