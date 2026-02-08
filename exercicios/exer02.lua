local number = 1;
repeat
    io.write('Digite um numero menor que 1 - ');
    number = tonumber(io.read());
until number < 1;