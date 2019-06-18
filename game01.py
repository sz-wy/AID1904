# 五子棋游戏  2019.05.09
import random
###阿发xxxxx

def restart_game_judge(list05):
    """
    # 重新开始游戏
    :param list05:
    :return:
    """
    if " " not in list05:
        return True
    else:
        return False


def start_game(list04):
    """
    # 开始游戏
    :param list04:
    :return:
    """
    print(
        "    %s | %s | %s" % (list04[0], list04[1], list04[2]) + "\n"
                                                                 "    —————————\n" +
        "    %s | %s | %s" % (list04[3], list04[4], list04[5]) + "\n"
                                                                 "    —————————\n" +
        "    %s | %s | %s" % (list04[6], list04[7], list04[8])
    )


def win_judge_func(list03, win_judge_ruler):
    """
    # 输赢判断
    :param list03:
    :param win_judge_ruler:
    :return:
    """
    set_human, set_sys = set(), set()

    for x in range(len(list03)):
        if list03[x] == "x":
            set_sys.add(x)
        elif list03[x] == "o":
            set_human.add(x)
        else:
            continue
    # print(type(set_human), type(set_sys))

    for y in range(len(win_judge_ruler)):

        if set_human != set() and set(win_judge_ruler[y]) <= set_human:
            return 2
        if set_sys != set() and set(win_judge_ruler[y]) <= set_sys:
            return 1
    else:
        return 0


def write_human_record(num01, list01):
    """
    记下用户操作记录
    :param num01:
    :param list01:
    :return:
    """
    if list01[num01].isspace():
        list01[num01] = "o"
        return True
    else:
        return False
        print("该位置已经存在了，请重新选择！")


def write_sys_record(list02):
    """
    # 记下系统操作记录
    :param list02:
    :return:
    """
    while True:
        sys_choice = random.randint(0, 8)
        if list02[sys_choice].isspace():
            list02[sys_choice] = "x"
            return False
            break

def main():
    # 主函数
    win_judge = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6]
    ]
    list_record = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

    # human_restart = False

    sys_start = True

    while True:
        if restart_game_judge(list_record):
            list_record = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

        if sys_start:

            write_sys_record(list_record)

            return_int = win_judge_func(list_record, win_judge)

            if return_int == 1:
                start_game(list_record)
                print("you lose ! s over!")
                break
            else:
                if restart_game_judge(list_record):
                    continue

        start_game(list_record)

        num_human = int(input("请输入要选择的位置："))

        sys_start = write_human_record(num_human, list_record)

        return_int = win_judge_func(list_record, win_judge)

        if return_int == 2:
            start_game(list_record)
            print("you win ! game over!")
            break
        else:
            if restart_game_judge(list_record):
                continue
main()
