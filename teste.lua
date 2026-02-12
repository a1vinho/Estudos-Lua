local users = {};

print('----- Sistema de Cadastro de usuário ---- 🌑')

function register()
    io.write('Digite o nome de usuário - ');

    local username = io.read();
    if username == 'menu' then
        main();
    end
    io.write('Digite seu email - ');

    local email = io.read();
    if email == 'menu' then
        main();
    end
    io.write('Digite sua senha - ');

    local password = io.read();
    if password == 'menu' then
        main();
    end
    local user = {
        user_id = tostring(math.tointeger(math.random(10))),
        username = username,
        email = email,
        password = password
    }
    if not validatedUser(user) then
        main()
    end
    if (users[user.username]) then
        print('Usuário já registrado,tente novamente');
        main();
    end
    users[user.username] = user;
    print('Usuário cadastrado com sucesso');

    main();
end;

function login()
    io.write('Digite o nome de usuário - ');

    local username = io.read();
    if username == 'menu' then
        main();
    end
    io.write('Digite sua senha - ');

    local password = io.read();
    if password == 'menu' then
        main()
    end
    local user = validatedUser({
        username = username,
        password = password
    });

    if (not user) then
        main()
    end

    if not users[username] then
        print('Usuário não encontrado,tente novamente');
        main()
    end;
    if (password ~= users[username].password) then
        print('Senha incorreta,tente novamente');
        login();
    end
    for key, value in pairs(users[username]) do
        print(key .. ": " .. value);
    end

    main()
end

function validatedUser(user)
    for key, value in pairs(user) do
        if (not value or value == '') then
            print(key .. ' invalído, tente novamente por favor');
            return false
        end
    end
    -- cb pode ser tanto a função register,quanto a função login,ambas as funções retorna o usuário.
    return true;
end
function removeUser()
    io.write('Digite o id - ');
    local user_id = io.read();
    if not user_id then
        print('Id invalído,tente novamente');
        main()
    end

    for key,user in pairs(users) do
        for chave,value in pairs(user) do
            if (user['user_id'] == user_id) then
                users[key] = nil
                print('Usuário excluido com sucesso.');

                main()
            end
        end
    end

    print('Usuário não encontrado');

    main();
end

function main()
    print([[
1 - Cadastra usuario
2 - Logar
3 - Excluir usuario
4 - Sair
]]);
    io.write('Digite uma opção - ');
    local option = io.read();

    if (option == '1') then
        register()
    elseif option == '2' then
        login()
    elseif option == '3' then
        removeUser();
    end
    
end

main();
