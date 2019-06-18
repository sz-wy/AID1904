"""
class Model:
    def __init__(self, name="", age=0, score=0, id=0):
        self.name = name
        self.age = age
        self.score = score
        self.id = id

    @property
    def name(self):
        return self.__name

    @name.setter
    def name(self, value):
        self.__name = value

    @property
    def age(self):
        return self.__age

    @age.setter
    def age(self, value):
        self.__age = value

    @property
    def score(self):
        return self.__score

    @score.setter
    def score(self, value):
        self.__score = value

    @property
    def id(self):
        return self.__id

    @id.setter
    def id(self, value):
        self.__id = value


class Controller:
    def __init__(self):
        self.__stu_list = []

    @property
    def stu_list(self):
        return self.__stu_list      #缺点：返回列表地址，外部还能修改列表元素
        # return self.__stu_list[:] #缺点：每次返回新列表(复制一份新列表)，占用内存


    def add_student_infor(self, new_stu):
        new_stu.id = self.generate_id()
        self.__stu_list.append(new_stu)

    def generate_id(self):
        return self.__stu_list[-1].id + 1 if len(self.__stu_list) > 0 else 1


p0 = Controller()

p0.add_student_infor(Model("张三", 18, 78))
p0.add_student_infor(Model("李四", 20, 70))

#从语法上看，没有修改属性，而是修改学生列表的第一个元素
#如果连列表都不能修改，则需要属性返回列表的切片
p0.stu_list[0]=Model()

for item in p0.stu_list:
    print(item.id,item.name,item.age,item.score)


"""


class Model:
    def __init__(self, name="", age=0, score=0, id=0):
        self.name = name
        self.age = age
        self.score = score
        self.id = id

    @property
    def name(self):
        return self.__name

    @name.setter
    def name(self, value):
        self.__name = value

    @property
    def age(self):
        return self.__age

    @age.setter
    def age(self, value):
        self.__age = value

    @property
    def score(self):
        return self.__score

    @score.setter
    def score(self, value):
        self.__score = value

    @property
    def id(self):
        return self.__id

    @id.setter
    def id(self, value):
        self.__id = value


class Controller:
    def __init__(self):
        self.__stu_list = []

    @property
    def stu_list(self):
        return self.__stu_list  # 缺点：返回列表地址，外部还能修改列表元素
        # return self.__stu_list[:] #缺点：每次返回新列表(复制一份新列表)，占用内存

    def add_student_infor(self, new_stu):
        """
        添加学生信息
        :param new_stu: Model类对象
        :return:
        """
        new_stu.id = self.__generate_id()
        self.__stu_list.append(new_stu)

    def __generate_id(self):
        return self.__stu_list[-1].id + 1 if len(self.__stu_list) > 0 else 1

    def remove_student_infor(self, id):
        """
        删除学生函数
        :param id: 学生id
        :return: True 删除成功
        """
        for item in self.__stu_list:
            if item.id == id:
                self.__stu_list.remove(item)
                return True
        return False

    def update_student_infor(self, p_stu):
        for item in self.__stu_list:
            if item.id == p_stu.id:
                item.name = p_stu.name
                item.age = p_stu.age
                item.score = p_stu.score

                return True
            # if self.__stu_list[i].id == p_stu.id:
            #     self.__stu_list[i] = p_stu
            #     return True
        return False

    def order_by_score(self):
        list_new = self.__stu_list[:]
        for x in range(len(list_new)):
            for y in range(x + 1, len(list_new)):
                if list_new[x].score > list_new[y].score:
                    list_new[x], list_new[y] = list_new[y], list_new[x]
        return list_new

class View:
    def __init__(self):
        self.__control_p = Controller()

    @property
    def stu_p(self):
        return self.__stu_p

    @stu_p.setter
    def stu_p(self, value):
        self.__stu_p = value

    @property
    def control_p(self):
        return self.__control_p

    def __display(self):
        print("1) 添加学生信息\n2) 显示学生信息\n3) 删除学生信息\n4) 修改学生信息\n5) 按学生成绩信息升序显示")

    def __select_menu_item(self):

        num = input("请选择：")

        stu_p = Model()

        if num == "1":
            self.__input_student(stu_p)
            self.__control_p.add_student_infor(stu_p)

        elif num == "2":
            self.__output_students_infor(self.__control_p.stu_list)

        elif num == "3":
            self.__delete_student(stu_p)

        elif num == "4":
            self.__modify_student(stu_p)

        elif num == "5":
            self.__output_student_by_score()

    def __delete_student(self, stu_p):

        self.__input_student_id(stu_p)

        if self.__control_p.remove_student_infor(stu_p.id):
            print("删除成功！")
        else:
            print("删除失败！")

    def __modify_student(self, stu_p):

        self.__input_student(stu_p)

        self.__input_student_id(stu_p)

        if self.__control_p.update_student_infor(stu_p):
            print("修改成功！")
        else:
            print("修改失败！")

    def __output_student_by_score(self):

        list_sort = self.__control_p.order_by_score()

        self.__output_students_infor(list_sort)

    def __input_student_id(self, stu_new):
        stu_new.id = int(input("请输入学生ID："))

    def __input_student(self, stu_new):
        stu_new.name = input("请输入姓名：")
        stu_new.age = int(input("请输入年龄："))
        stu_new.score = int(input("请输入分数："))

    def __output_students_infor(self, stu_list):
        for item in stu_list:
            print("学生信息:ID %d 姓名 %s 年龄%d 分数%d" % (item.id, item.name, item.age, item.score))

    def main(self):
        while True:
            self.__display()
            self.__select_menu_item()


v0 = View()
v0.main()
# p0 = Controller()
# print("--------add---------")
#
# p0.add_student_infor(Model("张三", 18, 78))
# p0.add_student_infor(Model("李四", 20, 70))
# p0.add_student_infor(Model("王五", 19, 88))
#
# # 从语法上看，没有修改属性，而是修改学生列表的第一个元素
# # 如果连列表都不能修改，则需要属性返回列表的切片
# # p0.stu_list[0]=Model()
#
# for item in p0.stu_list:
#     print(item.id, item.name, item.age, item.score)
#
# print("-------remove-------")
#
# bool_remove = p0.remove_student_infor(2)
# print(bool_remove)
# for item in p0.stu_list:
#     print(item.id, item.name, item.age, item.score)
#
# print("-------update-------")
#
# bool_update = p0.update_student_infor(Model("王五", 29, 77, 3))
#
# for item in p0.stu_list:
#     print(item.id, item.name, item.age, item.score)
