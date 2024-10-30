from pyverilog.vparser.ast import IdentifierScopeLabel, IdentifierScope
#以下标识符范围类别的计数函数
def count_IdentifierScopeLabel(node):
    count = 0
    for child in node.children():
        if isinstance(child, IdentifierScopeLabel):
            count += 1
        count += count_IdentifierScopeLabel(child)
    return count

def count_IdentifierScope(node):
    count = 0
    for child in node.children():
        if isinstance(child, IdentifierScope):
            count += 1
        count += count_IdentifierScope(child)
    return count
