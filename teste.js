const os = require('os');
const fs = require('fs');

async function getCpus() {
    const cpus = os.cpus();
    if (cpus.length > 10) {
        console.log('Otima maquina!!');
        return cpus;
    };
    return cpus
};

console.log(getCpus());
