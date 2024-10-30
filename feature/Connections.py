from pyverilog.vparser.ast import Concat, LConcat
#以下连接类别的计数函数
def count_Concat(node):
    count = 0
    for child in node.children():
        if isinstance(child, Concat):
            count += 1
        count += count_Concat(child)
    return count

def count_LConcat(node):
    count = 0
    for child in node.children():
        if isinstance(child, LConcat):
            count += 1
        count += count_LConcat(child)
    return count

