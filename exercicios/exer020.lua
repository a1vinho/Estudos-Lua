local nums = {1,43,10,55,5,2,-1,0};

local function bubbleSort(list)
    local i = #list - 1;

    for i = 1, #list do
        for j = 1 ,#list  do
            if list[j - 1] and list[j - 1] > list[j] then
                local temp = list[j];
                list[j] = list[j - 1];
                list[j - 1] = temp
            end
        end
    end

    return list
end

local list = bubbleSort(nums);

for i,v in ipairs(list) do
    print(list[i])
end