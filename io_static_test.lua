-- io_static_test.lua

-- 以只读方式打开一个文件
file = io.open("files/info.properties", "r");
-- 指定要读取的文件
io.input(file);

-- 读取一行数据
local line = io.read("*l");

-- 循环读取所有数据
while line ~= nil do
    print(line);
    line = io.read("*l");
end

-- 关闭文件
io.close(file);
