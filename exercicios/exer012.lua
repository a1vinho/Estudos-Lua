local t = { 5, 10, 15, 20, 25 }
local copia = {1};


table.move(t,1,3,2,copia);

for i,v in ipairs(copia) do
    print(v);
end