function isPrimo(n)
    local value = false
    local divisores = {};
    if n == 1 then
        return true;
    end
    for i = 2, n do
        if n % i == 0 then
            table.insert(divisores, i);
        end
    end
    if #divisores == 1 then
        value = true;
    end
    return value
end


for i = 1,100 do
    print(isPrimo(i))
end