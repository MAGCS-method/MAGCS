from pyverilog.vparser.ast import Parameter, Localparam, Supply, ParamArg, PortArg
#以下参数类别的计数函数
def count_Parameter(node):
    count = 0
    for child in node.children():
        if isinstance(child, Parameter):
            count += 1
        count += count_Parameter(child)
    return count

def count_Localparam(node):
    count = 0
    for child in node.children():
        if isinstance(child, Localparam):
            count += 1
        count += count_Localparam(child)
    return count

def count_Supply(node):
    count = 0
    for child in node.children():
        if isinstance(child, Supply):
            count += 1
        count += count_Supply(child)
    return count

def count_ParamArg(node):
    count = 0
    for child in node.children():
        if isinstance(child, ParamArg):
            count += 1
        count += count_ParamArg(child)
    return count

def count_PortArg(node):
    count = 0
    for child in node.children():
        if isinstance(child, PortArg):
            count += 1
        count += count_PortArg(child)
    return count
