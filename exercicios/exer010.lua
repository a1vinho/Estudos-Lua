function forEach(data, fn)
    for key, value in pairs(data) do
        data[key] = fn(key, value)
    end
end

local teste = { 'javascript', 'php', 'python', 'csharp' };

forEach(teste, function(index, value)
    print(value .. 'asdasd')
end);
