window.addEventListener('load', () => {
    const socket = new WebSocket(`ws://${location.hostname}:8080/switch-page`);
    socket.addEventListener('open', event => {
    });
    socket.addEventListener('message', event => {
        window.location.href = `./page${event.data}.html`;
    });
});
