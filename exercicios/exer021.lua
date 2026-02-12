local alfabeto = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
    'U', 'V', 'W', 'X', 'Y', 'Z' };

local function cifraCesa(text, salt)
    if (type(text) == 'string') then
        local cripto = "";
        for i = 1, #text do
            local char = string.sub(string.upper(text), i, i)
            local index = find(alfabeto, char);
            local newPos = ((index - 1 + salt) % 26) + 1
            
            cripto = cripto .. alfabeto[newPos];
        end
        return cripto
    end;
    return "Texto invalído";
end

function find(data, element)
    for i, v in ipairs(data) do
        if (data[i] == element) then
            return i;
        end
    end
end

print(cifraCesa('lua', 2))
