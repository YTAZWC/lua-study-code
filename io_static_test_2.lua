-- io.static_test_2.lua

-- 以追加的方式打开一个文件
file = io.open("files/info.properties", "a");

-- 指定要写入的文件为 file
io.output(file);

-- 写入一行数据
io.write("\nmail=ytazwc");

-- 关闭文件
io.close(file);
