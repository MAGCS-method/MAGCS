from pyverilog.vparser.ast import Disable, Repeat
#以下重复类别的计数函数
def count_Repeat(node):
    count = 0
    for child in node.children():
        if isinstance(child, Repeat):
            count += 1
        count += count_Repeat(child)
    return count


#以下禁用类别的计数函数
def count_Disable(node):
    count = 0
    for child in node.children():
        if isinstance(child, Disable):
            count += 1
        count += count_Disable(child)
    return count
