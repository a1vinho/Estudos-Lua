require('io');

function CodeWriteJs()
    local CODE_DATA = '';

    while true do
        io.write('Code - ');
        local code = io.read();

        CODE_DATA = '\n' .. CODE_DATA .. code .. '\n';

        local file = io.open('teste.js', 'w');

        if file and code ~= 'sair' then
                    print(CODE_DATA)

            file:write(CODE_DATA);
            file:close()
        end
        if code == 'clear' then
            CODE_DATA = '';
        end
        if code == 'sair' and file then
            file:close();
            break
        end
    end
end

CodeWriteJs()