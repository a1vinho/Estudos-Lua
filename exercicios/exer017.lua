function fibonnaci(n)
    if (n == 0 or n == 1) then
        return n
    end

    local a = 0;
    local b = 1;
    local soma = a + b;
    local nums = { 0 };
    for i = 2, n do
        
        a = b;
        b = soma;
        soma = a + b

        -- print(soma)
        nums[i] = a
    end

    return nums;
end

local teste = fibonnaci(10)
for i, v in ipairs(teste) do
    print(v)
end
