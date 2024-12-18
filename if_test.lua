-- if_test.lua

a = 5

if a > 0 then
    print(" a > 0 ")
else 
    print(" a <= 0 ")
end

if a > 0 then
    print("a > 0")
elseif a == 0 then
    print("a = 0")
else
    print("a < 0")
end