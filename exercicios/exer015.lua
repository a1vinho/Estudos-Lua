local function moveElement(dataTable, init, endPos)
    local copyTable = table.move(dataTable, 1, #dataTable, 1, {});
    if (#dataTable < endPos) then
        return "Erro length not is target";
    end
    if init == endPos then return end
    table.remove(dataTable, endPos)
    table.remove(dataTable, init);

    table.insert(dataTable, init, copyTable[endPos]);
    table.insert(dataTable, endPos, copyTable[init]);

    for k, v in ipairs(dataTable) do
        print(v)
    end
end
local t = { "A", "B", "C", "D", "E" }
moveElement(t, 1, 2)
