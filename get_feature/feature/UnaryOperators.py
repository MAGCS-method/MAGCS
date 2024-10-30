from pyverilog.vparser.ast import UnaryOperator, Uplus, Uminus, Ulnot, Unot, Uand, Unand, Uor, Unor, Uxor, Uxnor
#以下一元操作符的计数函数
def count_UnaryOperator(node):
    count = 0
    for child in node.children():
        if isinstance(child, UnaryOperator):
            count += 1
        count += count_UnaryOperator(child)
    return count

def count_Uplus(node):
    count = 0
    for child in node.children():
        if isinstance(child, Uplus):
            count += 1
        count += count_Uplus(child)
    return count

def count_Uminus(node):
    count = 0
    for child in node.children():
        if isinstance(child, Uminus):
            count += 1
        count += count_Uminus(child)
    return count

def count_Ulnot(node):
    count = 0
    for child in node.children():
        if isinstance(child, Ulnot):
            count += 1
        count += count_Ulnot(child)
    return count

def count_Unot(node):
    count = 0
    for child in node.children():
        if isinstance(child, Unot):
            count += 1
        count += count_Unot(child)
    return count

def count_Uand(node):
    count = 0
    for child in node.children():
        if isinstance(child, Uand):
            count += 1
        count += count_Uand(child)
    return count

def count_Uor(node):
    count = 0
    for child in node.children():
        if isinstance(child, Uor):
            count += 1
        count += count_Uor(child)
    return count

def count_Unand(node):
    count = 0
    for child in node.children():
        if isinstance(child, Unand):
            count += 1
        count += count_Unand(child)
    return count

def count_Unor(node):
    count = 0
    for child in node.children():
        if isinstance(child, Unor):
            count += 1
        count += count_Unor(child)
    return count

def count_Uxor(node):
    count = 0
    for child in node.children():
        if isinstance(child, Uxor):
            count += 1
        count += count_Uxor(child)
    return count

def count_Uxnor(node):
    count = 0
    for child in node.children():
        if isinstance(child, Uxnor):
            count += 1
        count += count_Uxnor(child)
    return count
