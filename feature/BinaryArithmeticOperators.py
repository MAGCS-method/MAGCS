from pyverilog.vparser.ast import Power, Times, Divide, Mod, Plus, Minus
#以下二元操作符（算术）的计数函数
def count_Power(node):
    count = 0
    for child in node.children():
        if isinstance(child, Power):
            count += 1
        count += count_Power(child)
    return count

def count_Times(node):
    count = 0
    for child in node.children():
        if isinstance(child, Times):
            count += 1
        count += count_Times(child)
    return count

def count_Divide(node):
    count = 0
    for child in node.children():
        if isinstance(child, Divide):
            count += 1
        count += count_Divide(child)
    return count

def count_Mod(node):
    count = 0
    for child in node.children():
        if isinstance(child, Mod):
            count += 1
        count += count_Mod(child)
    return count

def count_Plus(node):
    count = 0
    for child in node.children():
        if isinstance(child, Plus):
            count += 1
        count += count_Plus(child)
    return count

def count_Minus(node):
    count = 0
    for child in node.children():
        if isinstance(child, Minus):
            count += 1
        count += count_Minus(child)
    return count
