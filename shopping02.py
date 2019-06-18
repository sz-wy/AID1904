class Client:
    def __init__(self):
        self.__list_order = []

    @property
    def list_order(self):
        return self.__list_order

    @list_order.setter
    def list_order(self, value):
        self.list_order = value


    def shop_choice(self, new_commodity):
        """
        添加购物车,生成购物清单
        :param new_commodity: SuperMarket 对象
        :return:
        """
        cid, count = self.__creat_order(new_commodity)
        self.__list_order.append({"cid": cid, "count": count})
        print("添加到购物车。")

    #确认购买
    def buy_commodity(self, new_commodity):
        """
        结算商品
        :param new_commodity: SuperMarket 对象
        :return:
        """
        total_money = new_commodity.settlement(self.__list_order)
        money = self.__pay(new_commodity)


    def __creat_order(self, new_commodity):
        """
        选择商品
        :param new_commodity: SuperMarket 对象
        :return:
        """
        while True:
            cid = int(input("请输入商品编号："))
            if cid in new_commodity.dict_commodity_infor:
                break
            else:
                print("该商品不存在")
        count = int(input("请输入购买数量："))
        return cid, count


    def __pay(self, new_commodity):
        """
        付款
        :param new_commodity: SuperMarket 对象
        :return:
        """
        while True:
            money = float(input("总价%d元，请输入金额：" % new_commodity.total_money))
            bool_pay=new_commodity.change(money, self.__list_order)
            if bool_pay:
                break

class SuperMarket:
    def __init__(self):

        self.__dict_commodity_infor = {
            101: {"name": "屠龙刀", "price": 10000},
            102: {"name": "倚天剑", "price": 10000},
            103: {"name": "九阴白骨爪", "price": 8000},
            104: {"name": "九阳神功", "price": 9000},
            105: {"name": "降龙十八掌", "price": 8000},
            106: {"name": "乾坤大挪移", "price": 10000}
        }
        self.__total_money = 0

    @property
    def dict_commodity_infor(self):

        return self.__dict_commodity_infor

    @property
    def total_money(self):
        return self.__total_money

    @total_money.setter
    def total_money(self, value):
        self.__total_money = value


    def settlement(self, list_order):
        """
        超市清算商品总金额
        :param list_order: 购物清单
        :return:
        """
        for item in list_order:
            commodity = self.__dict_commodity_infor[item["cid"]]
            self.__total_money += commodity["price"] * item["count"]
        return self.__total_money


    def change(self, money, list_order):
        """
        超市找零
        :param money: 客户付款金额
        :param list_order: 购物清单
        :return:
        """
        if money >= self.total_money:
            print("购买成功，找回：%d元。" % (money - self.total_money))
            list_order.clear()
            return True
        else:
            print("金额不足.")


class View:
    def __init__(self):
        self.__commodity = SuperMarket()

    def __display_shopping_choice(self):
        """
        提示信息
        :return:
        """

        return input("1键购买，2键结算:")

    def __print_commodity_infor(self):
        """
        提示信息
        :param dict_commodity_infor:
        :return:
        """
        for key, value in self.__commodity.dict_commodity_infor.items():
            print("编号：%d，名称：%s，单价：%d。" % (key, value["name"], value["price"]))

    def __print_order(self,list_order):
        """
        self.__commodity
        :param list_order: 购物清单
        :return:
        """
        for item in list_order:
            commodity = self.__commodity.dict_commodity_infor[item["cid"]]
            print("商品：%s，单价：%d,数量:%d." % (commodity["name"], commodity["price"], item["count"]))
    def __shopping(self):
        """
        购物准备
        :return:
        """

        p0 = Client()

        while True:
            num = self.__display_shopping_choice()

            if num == "1": #添加购物车
                #打印商品
                self.__print_commodity_infor()
                #客户选择商品
                p0.shop_choice(self.__commodity)

            if num == "2":
                # 打印商品
                self.__print_order(p0.list_order)
                #客户结算
                p0.buy_commodity(self.__commodity)

    def main(self):
        self.__shopping()


v0 = View()
v0.main()
