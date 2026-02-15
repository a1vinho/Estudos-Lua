-- continua os estudos amanhã

local palavras = {
    "javascript",
    "python",
    "php",
    "lua",
    "java",
    "csharp"
}

local function BubbleSort()
    local index_main = 1;
    for j = 1, #palavras - 1 do
        for i = 1, #palavras - j do
            local temp = palavras[i];
            if (#palavras[i] > #palavras[i + 1]) then
               palavras[i] = palavras[i + 1];
               palavras[i + 1] = temp;
            end
        end
    end
    return palavras;
end
function sortedRervese()
    for j = 1,#palavras - 1 do
        for i = 1,#palavras - j do
            local temp = palavras[i];
            if (#palavras[i] < #palavras[i + 1]) then
                palavras[i] = palavras[i + 1];
                palavras[i + 1] = temp
            end
        end
    end
    return palavras;
end

local teste = BubbleSort();

for index, value in ipairs(teste) do
    print(value)
end

print ('------------------');

local teste2 = sortedRervese();

for index,value in ipairs(teste2) do 
    print(value)
end
