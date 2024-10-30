import networkx as nx
import numpy as np
import pandas as pd
import re
from pyverilog.vparser.parser import parse
from pyverilog.vparser.ast import ModuleDef
from feature.Always import *
from feature.UnaryOperators import *
from feature.BinaryArithmeticOperators import *
from feature.BinaryShiftOperators import *
from feature.BinaryComparisonOperators import *
from feature.BinaryLogicalOperator import *
from feature.AssignmentStatements import *
from feature.ControlFlowStatements import *
from feature.Constants import *
from feature.Instance import *
from feature.Connections import *
from feature.SelectionAndDeclaration import *
from feature.ParameterDefinition import *
from feature.VariableDeclaration import *
from feature.ValueRepresentation import *
from feature.ScopeIdentifier import *
from feature.ConditionalOperator import *
from feature.FunctionAndTaskCall import *
from feature.PragmaDirective import *
from feature.RepeatAndDisable import *

##############################################CLK##############################################################
def extract_timing_features(verilog_code):
    features = {}
    
    clock_signals = re.findall(r'\b(?:input|output|wire|reg)\s+\w+\s+(?:\[\d+:\d+\]\s+)?clk\b', verilog_code, re.IGNORECASE)
    features['clock_signals_count'] = len(clock_signals)
    
    flip_flops = re.findall(r'\breg\b', verilog_code, re.IGNORECASE)
    features['total_flip_flops'] = len(flip_flops)
    
    edge_triggered_blocks = re.findall(r'\balways\s+@(?:posedge|negedge)\s+clk\b', verilog_code, re.IGNORECASE)
    features['edge_triggered_blocks_count'] = len(edge_triggered_blocks)
    
    combinational_blocks = re.findall(r'\balways\s+@\s*(\*|\[)', verilog_code, re.IGNORECASE)
    sequential_blocks = edge_triggered_blocks
    features['combinational_to_sequential_ratio'] = len(combinational_blocks) / len(sequential_blocks) if sequential_blocks else 0
    
    if_statements = re.findall(r'\bif\b', verilog_code, re.IGNORECASE)
    features['sequential_control_complexity'] = len(if_statements)
    
    non_blocking_assignments = re.findall(r'<=', verilog_code)
    features['non_blocking_assignments'] = len(non_blocking_assignments)
    
    return features

def read_file_and_extract_features(file_path):
    try:
        with open(file_path, 'r') as file:
            verilog_code = file.read()
            return extract_timing_features(verilog_code)
    except FileNotFoundError:
        print(f"Error: The file at {file_path} was not found.")
        return {}
##############################################CLK##############################################################

##############################################AST##############################################################
def parse_verilog(file):
    ast, _ = parse([file])
    return ast

def extract_features(ast):
    features = {'module': 0, 'always': 0,
                'UnaryOperator':0, 'Uminus': 0, 'Ulnot': 0, 'Unot': 0, 'Uand': 0, 'Unand': 0, 'Uor': 0, 'Unor': 0, 'Uxor': 0, 'Uxnor': 0,
                'Times': 0, 'Plus': 0, 'Minus': 0,
                'Sll': 0, 'Srl': 0, 'Sla': 0, 'Sra': 0,
                'LessThan': 0, 'GreaterThan': 0, 'LessEq': 0, 'GreaterEq': 0, 'Eq': 0, 'NotEq': 0, 
                'And': 0, 'Xor': 0, 'Xnor': 0, 'Or': 0,
                'Cond': 0,
                'Assign': 0, 'Substitution': 0, 'BlockingSubstitution': 0, 'NonblockingSubstitution': 0,
                'IfStatement': 0,
                'ForStatement': 0, 
                'Constant': 0, 'IntConst': 0, 'StringConst': 0,
                'InstanceList': 0, 'Instance': 0,
                'Concat': 0, 
                'Partselect': 0,
                'SystemCall': 0,
                'Decl': 0,
                'Parameter': 0, 'PortArg': 0,
                'Variable': 0, 'Input': 0, 'Output': 0, 'Wire': 0, 'Reg': 0, 
                'Value': 0, 'Lvalue': 0, 'Rvalue': 0,                       
                }
    for desc in ast.description.definitions:
        if isinstance(desc, ModuleDef):
            features['module'] += 1
            features['always'] += count_Always(desc)
            features['UnaryOperator'] += count_UnaryOperator(desc)
            features['Uminus'] += count_Uminus(desc)
            features['Ulnot'] += count_Ulnot(desc)
            features['Unot'] += count_Unot(desc)
            features['Uand'] += count_Uand(desc)
            features['Unand'] += count_Unand(desc)
            features['Uor'] += count_Uor(desc)
            features['Unor'] += count_Unor(desc)
            features['Uxor'] += count_Uxor(desc)
            features['Uxnor'] += count_Uxnor(desc)
            features['Times'] += count_Times(desc)
            features['Plus'] += count_Plus(desc)
            features['Minus'] += count_Minus(desc)
            features['Sll'] += count_Sll(desc)
            features['Srl'] += count_Srl(desc)
            features['Sla'] += count_Sla(desc)
            features['Sra'] += count_Sra(desc)
            features['LessThan'] += count_LessThan(desc)
            features['GreaterThan'] += count_GreaterThan(desc)
            features['LessEq'] += count_LessEq(desc)
            features['GreaterEq'] += count_GreaterEq(desc)
            features['Eq'] += count_Eq(desc)
            features['NotEq'] += count_NotEq(desc)
            features['And'] += count_And(desc)
            features['Xor'] += count_Xor(desc)
            features['Xnor'] += count_Xnor(desc)
            features['Or'] += count_Or(desc)
            features['Cond'] += count_Cond(desc)
            features['Assign'] += count_Assign(desc)
            features['Substitution'] += count_Substitution(desc)
            features['BlockingSubstitution'] += count_BlockingSubstitution(desc)
            features['NonblockingSubstitution'] += count_NonblockingSubstitution(desc)
            features['IfStatement'] += count_IfStatement(desc)
            features['ForStatement'] += count_ForStatement(desc)
            features['StringConst'] += count_StringConst(desc)
            features['InstanceList'] += count_InstanceList(desc)
            features['Instance'] += count_Instance(desc)
            features['Concat'] += count_Concat(desc)
            features['Partselect'] += count_Partselect(desc)
            features['SystemCall'] += count_SystemCall(desc)
            features['Decl'] += count_Decl(desc)
            features['Parameter'] += count_Parameter(desc)
            features['PortArg'] += count_PortArg(desc)
            features['Variable'] += count_Variable(desc)
            features['Input'] += count_Input(desc)
            features['Output'] += count_Output(desc)
            features['Wire'] += count_Wire(desc)
            features['Reg'] += count_Reg(desc)

    return features
##############################################AST##############################################################

def main(file_path):

    timing_features = read_file_and_extract_features(file_path)
    ast = parse_verilog(file_path)
    ast_features = extract_features(ast)
    timing_features.update(ast_features)
    return timing_features


