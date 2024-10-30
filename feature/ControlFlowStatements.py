from pyverilog.vparser.ast import IfStatement, ForStatement, WhileStatement, CaseStatement
#以下过程控制语句（条件）的计数函数
def count_IfStatement(node):
    count = 0
    for child in node.children():
        if isinstance(child, IfStatement):
            count += 1
        count += count_IfStatement(child)
    return count

#以下过程控制语句（循环）的计数函数
def count_ForStatement(node):
    count = 0
    for child in node.children():
        if isinstance(child, ForStatement):
            count += 1
        count += count_ForStatement(child)
    return count

def count_WhileStatement(node):
    count = 0
    for child in node.children():
        if isinstance(child, WhileStatement):
            count += 1
        count += count_WhileStatement(child)
    return count

#以下过程控制语句（选择）的计数函数
def count_CaseStatement(node):
    count = 0
    for child in node.children():
        if isinstance(child, CaseStatement):
            count += 1
        count += count_CaseStatement(child)
    return count
