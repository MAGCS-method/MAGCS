from pyverilog.vparser.ast import InstanceList, Instance
#以下实例类别的计数函数
def count_InstanceList(node):
    count = 0
    for child in node.children():
        if isinstance(child, InstanceList):
            count += 1
        count += count_InstanceList(child)
    return count

def count_Instance(node):
    count = 0
    for child in node.children():
        if isinstance(child, Instance):
            count += 1
        count += count_Instance(child)
    return count
