-- Modelo simples de escrita e leitura de arquivos (LIB: IO)

io.input('teste.js');

local content = io.read('a') -- estamos lendo todo o contéudo do arquivo.

print(content)

-- Se quisermos ainda mais poder

io.output('copy-code.js');
io.write(content)

-- Modelo completo 

local file = io.open('teste.js','r+');

local bytes = file:seek("end",100)

file:write('teste')
file:close();

print(bytes)