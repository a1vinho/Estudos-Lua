local numbers = {1,2,3,4,5,6,7,8,9};

local function SumTotal(data)
    local total = 0;
    for i = 1,#data do
        total = total + data[i]
    end
    return total
end

print(SumTotal(numbers))