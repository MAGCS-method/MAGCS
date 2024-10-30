from pyverilog.vparser.ast import Value, Lvalue, Rvalue
#以下值类别的计数函数
def count_Value(node):
    count = 0
    for child in node.children():
        if isinstance(child, Value):
            count += 1
        count += count_Value(child)
    return count

def count_Lvalue(node):
    count = 0
    for child in node.children():
        if isinstance(child, Lvalue):
            count += 1
        count += count_Lvalue(child)
    return count

def count_Rvalue(node):
    count = 0
    for child in node.children():
        if isinstance(child, Rvalue):
            count += 1
        count += count_Rvalue(child)
    return count

