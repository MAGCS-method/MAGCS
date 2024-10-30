from pyverilog.vparser.ast import Always
#以下任务调用类别的计数函数
def count_Always(node):
    count = 0
    for child in node.children():
        if isinstance(child, Always):
            count += 1
        count += count_Always(child)
    return count
