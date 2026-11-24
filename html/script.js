// Pega o papel
const bilhete = document.querySelector('.bilhete');

// Escuta mensagens da Lua
window.addEventListener('message', function (evento) {
    const dados = evento.data;

    if (dados.acao === 'abrir') {
        bilhete.classList.add('aberto');
    }

    if (dados.acao === 'fechar') {
        bilhete.classList.remove('aberto');
    }
});