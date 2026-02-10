local t = { 1, 2, 3, 4 }
table.move(t,1,2,t[#t] + 1);

for i,v in ipairs(t) do
    print(v)
end