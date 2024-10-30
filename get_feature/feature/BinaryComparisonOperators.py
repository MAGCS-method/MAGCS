from pyverilog.vparser.ast import LessThan, GreaterThan, LessEq, GreaterEq, Eq, NotEq, Eql, NotEql
#以下二元操作符（比较）的计数函数
def count_LessThan(node):
    count = 0
    for child in node.children():
        if isinstance(child, LessThan):
            count += 1
        count += count_LessThan(child)
    return count

def count_GreaterThan(node):
    count = 0
    for child in node.children():
        if isinstance(child, GreaterThan):
            count += 1
        count += count_GreaterThan(child)
    return count

def count_LessEq(node):
    count = 0
    for child in node.children():
        if isinstance(child, LessEq):
            count += 1
        count += count_LessEq(child)
    return count

def count_GreaterEq(node):
    count = 0
    for child in node.children():
        if isinstance(child, GreaterEq):
            count += 1
        count += count_GreaterEq(child)
    return count

def count_Eq(node):
    count = 0
    for child in node.children():
        if isinstance(child, Eq):
            count += 1
        count += count_Eq(child)
    return count

def count_NotEq(node):
    count = 0
    for child in node.children():
        if isinstance(child, NotEq):
            count += 1
        count += count_NotEq(child)
    return count

def count_Eql(node):
    count = 0
    for child in node.children():
        if isinstance(child, Eql):
            count += 1
        count += count_Eql(child)
    return count

def count_NotEql(node):
    count = 0
    for child in node.children():
        if isinstance(child, NotEql):
            count += 1
        count += count_NotEql(child)
    return count
