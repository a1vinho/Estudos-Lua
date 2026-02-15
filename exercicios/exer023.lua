local nums = {100,25,6,0};

local selectionSort = function()
    for i = 1,#nums do
        local min = i;

        for j = i + 1,#nums do
            if (nums[j] < nums[min]) then
                min = j;
            end         
        end
        local temp = nums[min];
        nums[min] = nums[i];
        nums[i] = temp
    end
    return nums;
end

local teste = selectionSort()

for _,value in ipairs(teste) do
    print(value)
end