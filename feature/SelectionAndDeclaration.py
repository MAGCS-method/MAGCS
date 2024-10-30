from pyverilog.vparser.ast import Partselect,Pointer,SystemCall,Decl
#以下选择类别的计数函数
def count_Partselect(node):
    count = 0
    for child in node.children():
        if isinstance(child, Partselect):
            count += 1
        count += count_Partselect(child)
    return count

#以下指针类别的计数函数
def count_Pointer(node):
    count = 0
    for child in node.children():
        if isinstance(child, Pointer):
            count += 1
        count += count_Pointer(child)
    return count

#以下系统调用类别的计数函数
def count_SystemCall(node):
    count = 0
    for child in node.children():
        if isinstance(child, SystemCall):
            count += 1
        count += count_SystemCall(child)
    return count

#以下声明类别的计数函数
def count_Decl(node):
    count = 0
    for child in node.children():
        if isinstance(child, Decl):
            count += 1
        count += count_Decl(child)
    return count
