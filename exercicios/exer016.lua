local notas = {};

print('Sistema de gerenciamento de notas de alunos ----');
function InputData()
    for i = 1, 3 do
        io.write('Por favor digite a ' .. i .. ' nota - ')

        local nota = tonumber(io.read());
        ValidatedNota(nota)
        notas[i] = nota
    end

    return notas;
end

function ValidatedNota(nota)
    if nota < 0 or nota > 10 then
        print('Nota invalída,tente novamente por favor')

        InputData()
    end
end

InputData();

function Media(notas)
    local media = 0;

    for i,v in ipairs(notas) do    
        media = (media + v) / 2
    end
    return "Sua media é de " .. media;
end
local result = Media(notas)

print(result)