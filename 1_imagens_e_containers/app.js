const express = require("express");
const app = express();
const port = 3000;

app.get("/", function(request, response) {
    response.send("Olá, minha imagem maravilhosa!");
});

app.listen(port, function() {
    console.log(`Executando na porta: ${port}`);
});