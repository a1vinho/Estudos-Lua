local t = { 5, 10, 15, 20, 25 }
local copia = {};


table.move(t,1,3,1,copia);

for i,v in ipairs(copia) do
    print(v);
end