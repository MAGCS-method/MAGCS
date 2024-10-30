#以下过程控制语句（赋值）的计数函数
from pyverilog.vparser.ast import Assign, Substitution, BlockingSubstitution, NonblockingSubstitution

def count_Assign(node):
    count = 0
    for child in node.children():
        if isinstance(child, Assign):
            count += 1
        count += count_Assign(child)
    return count

def count_Substitution(node):
    count = 0
    for child in node.children():
        if isinstance(child, Substitution):
            count += 1
        count += count_Substitution(child)
    return count

def count_BlockingSubstitution(node):
    count = 0
    for child in node.children():
        if isinstance(child, BlockingSubstitution):
            count += 1
        count += count_BlockingSubstitution(child)
    return count

def count_NonblockingSubstitution(node):
    count = 0
    for child in node.children():
        if isinstance(child, NonblockingSubstitution):
            count += 1
        count += count_NonblockingSubstitution(child)
    return count
