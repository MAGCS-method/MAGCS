from pyverilog.vparser.ast import Pragma, PragmaEntry
#以下编译指令类别的计数函数
def count_Pragma(node):
    count = 0
    for child in node.children():
        if isinstance(child, Pragma):
            count += 1
        count += count_Pragma(child)
    return count

def count_PragmaEntry(node):
    count = 0
    for child in node.children():
        if isinstance(child, PragmaEntry):
            count += 1
        count += count_PragmaEntry(child)
    return count
