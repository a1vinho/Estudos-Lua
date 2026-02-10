local vogais = { 'a', 'e', 'a', 'i', 'o', 'o', 'o', 'u' };

--  algoritmo RLE
-- percorre a tabela

function contVogais()
    local atual = vogais[1];

    local newTable = {};
    local cont = 1
    for i, v in ipairs(vogais) do
        if (v == atual) then
            cont = cont + 1;
        else
            table.insert(newTable, {
                atual,
                cont
            });
            atual = vogais[i]
            cont = 1;
        end
    end
    if atual then
        table.insert(newTable, { atual, cont })
    end

    return newTable
end

local cont = contVogais();

for i, v in ipairs(cont) do
    for _, d in ipairs(cont[i]) do
        print(d)
    end
end
