io.write('Por favor digite seu nome - ');

local name = io.read();

local jogadas = { "tesoura", "pedra", "papel" };

local function randomComputer()
    local random_number = math.random(3);

    return jogadas[random_number];
end

-- termina a logica do jogo pedra,papel e tesoura

local function Player(player, computer)
    if (player == 'tesoura' and computer == 'papel') then
        print('Você VENCEU!!! :D ' .. name);

        print('----------------------------')
        print("Computador: " .. computer)
        print(name .. ': ' .. player)
    end
    if (player == 'pedra' and computer == 'tesoura') then
        print('Você VENCEU!!! :D ' .. name);

        print('----------------------------')
        print("Computador: " .. computer)
        print(name .. ': ' .. player)
    end
    if (player == 'papel' and computer == 'pedra') then
        print('Você VENCEU!!! :D ' .. name);
        print('----------------------------')
        print("Computador: " .. computer)
        print(name .. ': ' .. player)
    end
end

local function Computer(computer, player)
    if (player == 'tesoura' and computer == 'pedra') then
        print('você perdeu D:');

        print('----------------------------')
        print("Computador: " .. computer)
        print(name .. ': ' .. player)
    end
    if (player == 'papel' and computer == 'tesoura') then
        print('você perdeu D:');

        print('----------------------------')
        print("Computador: " .. computer)
        print(name .. ': ' .. player)
    end
    if (player == 'tesoura' and computer == 'pedra') then
        print('você perdeu D:');

        print('----------------------------')
        print("Computador: " .. computer)
        print(name .. ': ' .. player)
    end
end

local function GameLogic(player, computer)
    if (player == computer) then
        print('Empate!!!');
    end
    Player(player, computer);
    Computer(computer, player)
end
local function indexOf(array, element)
    for item in ipairs(array) do
        if (array[item] == element) then
            return array[item]
        end
    end
    return false
end
repeat
    local menu = "Pedra,papel e tesoura - Você contra o computador !!!";
    io.write('PEDRA,PAPEL OU TESOURA - ');
    local player = string.lower(io.read());

    print(player)
    if (indexOf(jogadas, player) == false) then
        print('Jogada não encontrada')
    else
        local random = randomComputer();
        GameLogic(player, random)
    end
until player == 'sair'
