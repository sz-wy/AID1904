def hint_input_infor(str_input_infor):
    """
    提示客户要输入的信息
    :param str_input_infor: 提示语
    :return: 购物选择
    """
    return int(input(str_input_infor))


def print_output_infor(str_output_infor):
    """
    系统统计后，显示信息给客户
    :param str_output_infor: 显示的信息
    :return: None
    """
    print(str_output_infor)


def final_shopping_input_choice(final_choice_num):
    """
    判断客户做出的选择：加入购物车，结算商品。
    :param final_choice_num:　客户做的选择，
                                １：将商品加入购物车
                                ２：结算商品
    :return:True 返回购物已完成
    """

    #将商品加入购物车
    if final_choice_num == 1:

        # 显示所有商品
        print_commodities_total_class()

        # 获取用户输入
        commodity_id = hint_input_infor("请输入要购买商品的编号：")

        # 判断客户输入合法性
        if commodity_id not in commodities_info:
            print_output_infor("输入错误，只能输入101,102,103,104,105,106！")
            return None

        # 获取用户输入
        commodity_sum = hint_input_infor("请输入要购买商品的数量：")

        # 统计商品
        count_commodities(commodity_id, commodity_sum)

        #提示客户
        print_output_infor("已添加到购物车。")


    #结算商品
    elif final_choice_num == 2:

        # 显示客户的购物车
        print_commodities_buy()

        # 最后统计商品总金额
        output_amount = count_total_amount()

        # 显示商品总金额
        print_output_infor("总价%d元" % output_amount)

        # 用户付款金额
        input_amount = hint_input_infor("请输入金额：")

        # 找零
        print_output_infor("购买成功,找回：%d." % (input_amount - output_amount))

        return True

    else:
        # 提示客户
        print_output_infor("输入错误,只能输入 １和２！")


def get_commodities_price(choice_num):
    """
    获取商品的单价
    :param choice_num: 商品的　id 号
    :return: 单价
    """

    if choice_num in commodities_info:
        return commodities_info[choice_num]["price"]


def count_commodities(id, total):
    """
    加入购物车，统计购买种类及数量
    :param id: 商品的标识号
    :param total: 要加入购物车的商品数量
    :return: None
    """
    global dict_shop
    # 之前商品在购物车存在过
    if id in dict_shop:
        dict_shop[id] += total
    else:
        dict_shop[id] = total


def count_total_amount():
    """
    用于统计购物车里面的商品总价
    :return:total_amount　商品总价
    """
    total_amount = 0

    for key, value in dict_shop.items():
        one_price = get_commodities_price(key)
        total_amount += one_price * value

    return total_amount


def print_commodities_total_class():
    """
    用于显示该店的商品信息，供客户选择
    :return: None
    """
    for key, value in commodities_info.items():
        print_output_infor("编号：%d，名称：%s，单价：%d。"
                           % (key, commodities_info[key]["name"], commodities_info[key]["price"]))


def print_commodities_buy():
    """
    用于显示客户的已选择商品的购物车信息
    :return: None
    """
    for key, value in dict_shop.items():
        print_output_infor("商品:%s,单价:%d,数量:%d."
                           % (commodities_info[key]["name"], commodities_info[key]["price"], value))


#主程序　start


def main():
    while True:

        # 获取用户输入
        shopping_input_choice = hint_input_infor("1键购买，2键结算：")

        #获取客户购物的进度
        return_result = final_shopping_input_choice(shopping_input_choice)

        # 购物完成，结束购买
        if return_result:
            break


# 商品信息
commodities_info = {
    101: {"name": "屠龙刀", "price": 10000},
    102: {"name": "倚天剑", "price": 10000},
    103: {"name": "九阴白骨爪", "price": 8000},
    104: {"name": "九阳神功", "price": 9000},
    105: {"name": "降龙十八掌", "price": 8000},
    106: {"name": "乾坤大挪移", "price": 10000}
}

# 用于存储客户的订单
dict_shop = {}

main()