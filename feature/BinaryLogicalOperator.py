from pyverilog.vparser.ast import And, Xor, Xnor, Or
#以下二元操作符（逻辑）的计数函数
def count_And(node):
    count = 0
    for child in node.children():
        if isinstance(child, And):
            count += 1
        count += count_And(child)
    return count

def count_Xor(node):
    count = 0
    for child in node.children():
        if isinstance(child, Xor):
            count += 1
        count += count_Xor(child)
    return count

def count_Xnor(node):
    count = 0
    for child in node.children():
        if isinstance(child, Xnor):
            count += 1
        count += count_Xnor(child)
    return count

def count_Or(node):
    count = 0
    for child in node.children():
        if isinstance(child, Or):
            count += 1
        count += count_Or(child)
    return count
