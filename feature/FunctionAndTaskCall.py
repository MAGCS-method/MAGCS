from pyverilog.vparser.ast import FunctionCall, TaskCall
#以下函数调用类别的计数函数
def count_FunctionCall(node):
    count = 0
    for child in node.children():
        if isinstance(child, FunctionCall):
            count += 1
        count += count_FunctionCall(child)
    return count

#以下任务调用类别的计数函数
def count_TaskCall(node):
    count = 0
    for child in node.children():
        if isinstance(child, TaskCall):
            count += 1
        count += count_TaskCall(child)
    return count
