local numbers = '';
local function parNumber(num)
    if (type(num) == "number") then
        if (num % 2 == 0) then
            print(num .. " é par")
        else
            print(num .. " é impar")
        end
    else
        print('numero invalído,tente novamente');
    end
end

for i = 1, 10 do
    parNumber(i)
end

print(numbers)

print(io)
