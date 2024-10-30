from pyverilog.vparser.ast import Constant, IntConst, FloatConst, StringConst
#以下常量类别的计数函数
def count_Constant(node):
    count = 0
    for child in node.children():
        if isinstance(child, Constant):
            count += 1
        count += count_Constant(child)
    return count

def count_IntConst(node):
    count = 0
    for child in node.children():
        if isinstance(child, IntConst):
            count += 1
        count += count_IntConst(child)
    return count

def count_FloatConst(node):
    count = 0
    for child in node.children():
        if isinstance(child, FloatConst):
            count += 1
        count += count_FloatConst(child)
    return count

def count_StringConst(node):
    count = 0
    for child in node.children():
        if isinstance(child, StringConst):
            count += 1
        count += count_StringConst(child)
    return count
