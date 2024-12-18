-- break_test.lua

for i = 1, 9 do
    print(i)
    if i == 5 then
        break   -- i = 5 时 退出循环
    end
end
