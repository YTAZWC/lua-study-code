-- io_seek_test.lua

-- 以只读方式打开文件
file = io.open("files/test_seek.txt", "r");

local pos = file:seek(); -- 读取光标所在位置
print("当前光标位置：" .. pos);

-- 读取一行数据
local line = file:read("*l");
print(line);

pos = file:seek();  -- 读取一行后光标所在位置
print("读取一行后光标所在位置：" .. pos);   -- 此时光标应该指向第一行的行结束符位置 即该行长度+2

pos = file:seek("set"); -- 返回文件开头位置
print("返回文件开头位置：" .. pos);

pos = file:seek("set", 2); -- 返回文件开头位置后的第2个位置
print("返回到文件开头后的第二个位置：" .. pos);

-- 再次读取一行
line = file:read("*l"); -- 是从光标位置的下一个位置开始读取
print(line);

-- 移动光标位置到文件结尾位置向左移动2位
pos = file:seek("end", -2);
print("移动光标位置到文件结尾位置向左移动2位: " .. pos);

-- 再次读取一行
line = file:read("*l");
print(line);

-- 关闭文件
file:close();