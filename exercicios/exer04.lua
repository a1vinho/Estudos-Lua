local mapa = {
    [1] = "Floresta",
    [2] = 10,
    [3] = 20,
    [4] = nil
}
local langs = { "javascript", "php", "lua", "python" };

for chave, valor in ipairs(langs) do
    if (#valor >= 5) then
        print(valor)
    end
end

local function length(data)
    if (type(data) == 'table') then
        local cont = 0;
        for item in pairs(data) do
            cont = cont + 1
        end
        return cont;
    end
    return "Data is not type table";
end

print(length(mapa))
