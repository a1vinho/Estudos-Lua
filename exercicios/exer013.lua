local t = { "a", "b", "c", "d", "e", "f" }
local copia = table.move(t,3,5,1,{});


for i,v in copia do
    print(v)
end