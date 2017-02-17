import processing.net.*;
float Version = 0.5;

Client c;
Server s;
diagonalSystem ds;

PFont font;
String input;
String data[];
float n;
int y1, y2;
int puntos1 = 0;
int puntos2 = 0;
int pelotas = 2;
int c1 = 225, c2 = 225;
boolean empezarjuego = false;

void setup() {
  size(800, 600);
  ds = new diagonalSystem();
  smooth();
  s = new Server(this, 12346);
  c = new Client(this, "127.0.0.1", 12345);
  font = loadFont("Jokerman-Regular-48.vlw");
  textFont(font, 32);
}

void draw() {
  if (empezarjuego) {
    fill(0, 40);
    noStroke();
    rect(0, 0, width, height);

    String pp = c.readStringUntil('/');
    if (pp != null) {
      data = split(pp, " ");
      if (data[0].equals("barra")) y1 = int(data[1]);
      if (data[0].equals("pelota")) ds.refrescar(float(data[1]), float(data[2]), float(data[3]), float(data[4]), int(data[5]), (data[6]));
    }

    while (n < pelotas) {
      ds.anyadir();
      n++;
    }
    ds.actu();

    fill(0);
    stroke(c1, 225, c1);
    rect(20, y1, 20, 120);
    stroke(c2, 225, c2);
    rect(width-40, y2, 20, 120);

    textSize(40);
    fill(color(c1, 225, c1));
    text(puntos1, 300, 70);
    fill(color(c2, 225, c2));
    text(puntos2, 500, 70);
    c1 = c1-6;
    c2 = c2-6;
  }
  else {
    background(0);
    text("Esperando un nuevo cliente..", 30, 50);
  }
}


void keyPressed() {
  if (keyCode == DOWN)y2 = y2+10;
  if (keyCode == UP)y2 = y2-10;
  s.write("barra "+y2+" /");
}

void serverEvent(Server someServer, Client someClient) {
  println("We have a new client: " + someClient.ip());
  empezarjuego = true;
}

