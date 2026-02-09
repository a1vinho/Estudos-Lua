local frutas = {"banana","maça","pera","uva","banana","maça"};

local function contValue(data,target)
    local cont = 0;
    local atual = data[1];

    target = string.lower(target);
    for key,value in pairs(data) do
        if (target == value) then
            cont  = cont + 1;
        end
    end
    return 'O valor: ' .. target .. " aparece " .. cont .. ' vezes'
end

local result = contValue(frutas,'banana')
print(result)