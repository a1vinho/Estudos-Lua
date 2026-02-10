local langs = { "javascript", "php", "python", "csharp" };

local newTable = table.pack(langs);


for i = 1, #newTable, 1 do
    for i, v in ipairs(newTable[i]) do
        print(v)
    end
end
