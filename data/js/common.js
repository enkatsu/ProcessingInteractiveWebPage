window.addEventListener('load', () => {
    const socket = new WebSocket('ws://localhost:8080/switch-page');
    socket.addEventListener('open', event => {
    });
    socket.addEventListener('message', event => {
        window.location.href = `./page${event.data}.html`;
    });
});
