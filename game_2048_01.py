"""
    2048核心算法
"""


# 1、定义函数：将列表元素0移至末尾
#      [2,0,0,2]---->[2,2,0,0]
#     [2,0,0,2]---->[2,2,0,0]
#     [2,4,0,2]---->[2,4,2,0]


def zero_to_end(target_list):
    """

    :param target_list:
    :return:
    """
    # for x in range(len(target_list)):
    #     for y in range(x + 1, len(target_list)):
    #         if target_list[x] == 0 and target_list[y] != 0:
    #             target_list[x], list01[y] = target_list[y], target_list[x]
    #             break

    for i in range(len(target_list) - 1, -1, -1):
        if target_list[i] == 0:
            del target_list[i]
            target_list.append(0)


list01 = [2, 0, 4, 4, 2, 2, 4]
zero_to_end(list01)
print(list01)

# 2、定义函数：合并列表中相同元素

#      [2,0,0,2]---->[4,0,0,0]
#      [2,2,0,2]---->[4,2,0,0]
#      [2,4,0,2]---->[2,4,2,0]
#      [2,2,0,4]---->[4,4,0,0]
def merge(target_list):
    zero_to_end(target_list)
    for x in range(len(target_list)-1):
        if target_list[x] == target_list[x+1]:
            target_list[x] += target_list[x+1]
            del target_list[x+1]
            target_list.append(0)

merge(list01)
print(list01)

#3、定义函数：向左移动二维码
"""
[
   [2,2,0,2],
   [0,2,0,4],
   [2,0,4,2],
   [0,4,2,2],
  ]
"""
double_list=[
   [2,2,0,2],
   [0,2,0,4],
   [2,0,4,2],
   [0,4,2,2],
  ]

def left_move(map_list):
    #将每行（二维列表的每个元素）传递给合并函数
    for i in range(len(map_list)):
        merge(map_list[i])

# left_move(double_list)
print(double_list)

#向右移动
def right_move(map_list):
    #将每行（二维列表的每个元素）传递给合并函数
    for i in range(len(map_list)):

        list_temp=map_list[i][::-1]

        merge(list_temp)
        #将合并后的结果还给二维列表
        map_list[i][::-1]=list_temp
        # map_list[i]=list_temp[::-1] #跟上行代码作用相同

right_move(double_list)
print(double_list)

#向上、向下 ：从上到下获取数据，形成一维列表，还给之前二维列表





















