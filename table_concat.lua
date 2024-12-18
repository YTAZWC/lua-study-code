-- table_concat.lua

-- 混合结构 table
emp = {
    "北京",
    name = "张三",
    age = 23,
    "上海",
    depart = "销售部",
    "长沙",
    "深圳"
}

-- 调用concat函数
-- 连接第二个元素到第四个元素，元素之间通过, 连接；
print(table.concat(emp, ",", 2, 4))
