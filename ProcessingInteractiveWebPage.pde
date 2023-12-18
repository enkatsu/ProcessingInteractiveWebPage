import http.SimpleHTTPServer;
import websockets.WebsocketServer;

WebsocketServer ws;
SimpleHTTPServer server;

void setup() {
  size(200, 200);
  ws = new WebsocketServer(this, 8080, "/switch-page");
  server = new SimpleHTTPServer(this);
  server.serveAll("");
  server.printAllContexts();
}

void draw() {
}

void keyPressed() {
  if (key == '1' || key == '2') {
    ws.sendMessage(str(key));
  }
}

void webSocketServerEvent(String msg) {
  println(msg);
}
