const express = require('express');
const os = require('os');

const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
    res.send(`¡Hola desde ${os.hostname()}!`);
});

// Página de error personalizada
app.use((req, res) => {
    res.status(503).sendFile('/home/vagrant/app/error.html');
});

app.listen(PORT, () => {
    console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
