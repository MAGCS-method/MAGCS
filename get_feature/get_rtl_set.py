import os
import shutil

def get_rtl_set(path, rtl_set):
    num = len([name for name in os.listdir(path) if os.path.isdir(os.path.join(path, name))])
    for i in range(1, num+1):
        if os.path.exists(f'{path}/fuzz_{i}/vivado/rtl.v'):
            shutil.copyfile(f'{path}/fuzz_{i}/vivado/rtl.v', f'{rtl_set}/fuzz_{i}.v')
            print(f'{rtl_set}/fuzz_{i}.v created successfully.')
        else:
            print(f'rtl.v not found in {path}/fuzz_{i}/vivado.')
            continue

def main(path, rtl_set):
    path = '/MAGCS/program_set/output'
    rtl_set = '/MAGCS/rtl_set'
    get_rtl_set(path, rtl_set)
