from pyverilog.vparser.ast import Sll, Srl, Sla, Sra
#以下二元操作符（位移）的计数函数
def count_Sll(node):
    count = 0
    for child in node.children():
        if isinstance(child, Sll):
            count += 1
        count += count_Sll(child)
    return count

def count_Srl(node):
    count = 0
    for child in node.children():
        if isinstance(child, Srl):
            count += 1
        count += count_Srl(child)
    return count

def count_Sla(node):
    count = 0
    for child in node.children():
        if isinstance(child, Sla):
            count += 1
        count += count_Sla(child)
    return count

def count_Sra(node):
    count = 0
    for child in node.children():
        if isinstance(child, Sra):
            count += 1
        count += count_Sra(child)
    return count
