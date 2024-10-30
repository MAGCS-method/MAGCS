from pyverilog.vparser.ast import Cond
#以下三元操作符的计数函数
def count_Cond(node):
    count = 0
    for child in node.children():
        if isinstance(child, Cond):
            count += 1
        count += count_Cond(child)
    return count
