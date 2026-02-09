local numbers = { 0, 45, 1, 52, 3, 10 };

local function MaxMin(data)
    local max = data[1];
    local min = data[1];
    for i = 1, #data - 1, 1 do
        if (max < data[i]) then
            max = data[i]
        end
        if (min > data[i]) then
            min = data[i]
        end
    end
    return max, min
end

print(MaxMin(numbers))
