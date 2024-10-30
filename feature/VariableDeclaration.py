from pyverilog.vparser.ast import Variable, Input, Output, Inout, Tri, Wire, Reg, Integer, Real, Genvar
#以下变量类别的计数函数
def count_Variable(node):
    count = 0
    for child in node.children():
        if isinstance(child, Variable):
            count += 1
        count += count_Variable(child)
    return count

def count_Input(node):
    count = 0
    for child in node.children():
        if isinstance(child, Input):
            count += 1
        count += count_Input(child)
    return count

def count_Output(node):
    count = 0
    for child in node.children():
        if isinstance(child, Output):
            count += 1
        count += count_Output(child)
    return count

def count_Inout(node):
    count = 0
    for child in node.children():
        if isinstance(child, Inout):
            count += 1
        count += count_Inout(child)
    return count

def count_Tri(node):
    count = 0
    for child in node.children():
        if isinstance(child, Tri):
            count += 1
        count += count_Tri(child)
    return count

def count_Wire(node):
    count = 0
    for child in node.children():
        if isinstance(child, Wire):
            count += 1
        count += count_Wire(child)
    return count

def count_Reg(node):
    count = 0
    for child in node.children():
        if isinstance(child, Reg):
            count += 1
        count += count_Reg(child)
    return count

def count_Integer(node):
    count = 0
    for child in node.children():
        if isinstance(child, Integer):
            count += 1
        count += count_Integer(child)
    return count

def count_Real(node):
    count = 0
    for child in node.children():
        if isinstance(child, Real):
            count += 1
        count += count_Real(child)
    return count

def count_Genvar(node):
    count = 0
    for child in node.children():
        if isinstance(child, Genvar):
            count += 1
        count += count_Genvar(child)
    return count
