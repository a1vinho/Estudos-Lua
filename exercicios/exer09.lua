function Set(data)
    local set = {};
    for key, value in pairs(data) do
        set[value] = value;
    end
    for key, value in pairs(set) do
        print(value)
    end
end

local frutas = { "banana", "maça", "pera", "uva", "banana", "maça","js" };

local set = Set(frutas);

print(set)
