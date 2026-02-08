io.write('Por favor digite seu nome - ');

local name = io.read();

local jogadas = {"tesoura","pedra","papel"};

local function randomComputer() 
    local random_number = math.random(3);

    return jogadas[random_number];
end

-- termina a logica do jogo pedra,papel e tesoura

local function GameLogic(player,computer) 
    if (player == computer or computer == player) then
        print('Empate!!!');
    end
end

print(randomComputer());
-- repeat
--     local menu = "Pedra,papel e tesoura - Você contra o computador !!!";
    
-- until 