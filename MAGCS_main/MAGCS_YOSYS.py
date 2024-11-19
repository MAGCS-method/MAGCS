import tensorflow as tf
import random
import numpy as np
from collections import namedtuple
import os
import Evaluate_Yosys


class YosysOptimizationActions:
    def __init__(self):
        self.actions = {
            'opt_expr': ["opt_expr;", "opt_expr -mux_undef;", "opt_expr -mux_bool;", "opt_expr -undriven;", "opt_expr -noclkinv;", "opt_expr -fine;", "opt_expr -full;", "opt_expr -keepdc;"],
            'opt_dff': ["opt_dff;", "opt_dff -nodffe;", "opt_dff -nosdff;", "opt_dff -keepdc;", "opt_dff -sat;"],
            'opt_clean': ["opt_clean;", "opt_clean -purge;"],
            'opt_merge': ["opt_merge;", "opt_merge -share_all;"],
            'opt_reduce': ["opt_reduce;", "opt_reduce -fine;", "opt_reduce -full;"],
            'opt_mem': ["opt_mem;", "opt_mem_feedback;", "opt_mem_priority;", "opt_mem_widen;"],
            'opt': ["opt;", "opt -fast;", "opt -full;", "opt -fast -full;"],
            'opt_share': ["opt_share;"],
            'opt_lut': ["opt_lut;"]
        }
        self.all_operations = list(self.actions.keys())

    def get_action_space(self):
        """Return a list of all available optimization steps."""
        return self.all_operations

    def sample_action(self, operation):
        """Randomly choose a parameter for a given optimization operation and return as an index."""
        if operation in self.actions:
            choice = random.choice(self.actions[operation])
            return self.actions[operation].index(choice)  
        return None

    def get_command(self, action):
        """Convert (operation, index) pair to Yosys command string."""
        operation, index = action
        if operation in self.actions and index < len(self.actions[operation]):
            return self.actions[operation][index]
        return ""

    def encode_state(self, state):
        """Convert state to one-hot encoding."""
        encoded_state = [1 if op == state else 0 for op in self.all_operations]
        return np.array(encoded_state, dtype=np.float32)


class MultiAgentA2C(tf.Module):
    def __init__(self, num_agents, y_optimization_actions):
        self.agents = [Agent() for _ in range(num_agents)]
        self.optimizer = tf.keras.optimizers.legacy.Adam(learning_rate=0.001)
        self.y_optimization_actions = y_optimization_actions
        self.action_space = y_optimization_actions.get_action_space()
        

        
    def select_actions(self):
        """Select actions for each agent."""
        actions = []
        for agent in self.agents:
            operation = random.choice(self.action_space)  
            parameter = self.y_optimization_actions.sample_action(operation) 
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
    def __init__(self, y_optimization_actions):
        self.actions = y_optimization_actions
        self.state = None
        self.history = []

    def reset(self):
        """Reset the environment."""
        self.state = random.choice(self.actions.get_action_space())
        self.history = []
        return self.state

    def step(self, action,episode):
        """Perform an action and return reward."""
        reward = self.evaluate_action(action,episode)
        next_state = random.choice(self.actions.get_action_space())  
        return next_state, reward

    def evaluate_action(self, actions,episode):
        new_episode = episode+1
        command_sequence = "hierarchy; proc; " 
        y_optimization_actions = YosysOptimizationActions()  
        

        for operation, index in actions:
            print(f"Evaluating action: {(operation, index)}")
            command = y_optimization_actions.get_command((operation, index))
            command_sequence += command + " " 

        print(f"Generated command sequence: {command_sequence.strip()}")
        
        fault_number, timeout_number = Evaluate_Yosys.Evaluate_main(new_episode,command_sequence)
        theta = 0.7
        reward = (theta * (fault_number) / (fault_number + 1)) - ((1 - theta) * (timeout_number) / (timeout_number + 1))

        print(f"detected_faults: {fault_number}, timeouts: {timeout_number}, reward: {reward}")
        return reward


def train_multi_agent_a2c():
    y_optimization_actions = YosysOptimizationActions()
    env = OptimizationEnvironment(y_optimization_actions)
    agents = MultiAgentA2C(num_agents=9, y_optimization_actions=y_optimization_actions)

    for episode in range(1000): 
        state = env.reset()
        state_encoded = y_optimization_actions.encode_state(state)  
        state_encoded = tf.expand_dims(state_encoded, axis=0)  

        actions = agents.select_actions()  
        print(f"Episode {episode + 1}, Selected Actions: {actions}")  


        next_state, reward = env.step(actions,episode)  
        next_state_encoded = y_optimization_actions.encode_state(next_state)  
        next_state_encoded = tf.expand_dims(next_state_encoded, axis=0)  
        

        for agent_idx, action in enumerate(actions):
            agents.update_policy(state_encoded, action, reward, next_state_encoded, agents.agents[agent_idx])
        state_encoded = next_state_encoded

if __name__ == "__main__":
    train_multi_agent_a2c()
