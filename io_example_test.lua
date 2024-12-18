-- io_example_test.lua

-- 以只读方式打开一个文件
file = io.open("files/info.properties", "r");
-- 指定要读取的文件
-- io.input(file);

-- 读取一行数据
-- local line = io.read("*l");
local line = file:read("*l");   -- 替换为实例函数 read

-- 循环读取所有数据
while line ~= nil do
    print(line);
    -- line = io.read("*l");
    line = file:read("*l"); -- 替换为实例函数 read
end

-- 关闭文件
-- io.close(file);
file:close();   -- 替换为实例函数 close
