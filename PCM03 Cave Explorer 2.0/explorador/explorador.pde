//BY RUBÉN RUIZ - 08-02-18

mapa map;
player jugador;
PImage life, mine;

/*
 0.Pared: 50,25,70
 1.Suelo: 220,215,100
 2.Bomba: 0,0,0
 3.Piqueta: 255,50,50
 4.Salida: 255,255,255
 */

void setup() {
  size(960, 320);
  map = new mapa();
  jugador = new player(map);
  map.setPlayer(jugador);
  map.todo();

  life = loadImage("vida.png");
  mine = loadImage("piqueta.png");

  rectMode(CENTER);
  ellipseMode(CENTER);
}


void draw() {
  if (jugador.win) {
    stop();
  }

  if (jugador.vidas < 1) {
    println("Has muerto...");
    stop();
  }

  map.pintar();
  jugador.actualizar();
}

void keyReleased() {
  if (keyCode==UP) {
    jugador.movArriba();
  }
  if (keyCode==DOWN) {
    jugador.movAbajo();
  }
  if (keyCode==LEFT) {
    jugador.movIzquierda();
  }
  if (keyCode==RIGHT) {
    jugador.movDerecha();
  }
}

void mouseReleased() {
  int cx = (mouseX/32)+1, cy =(mouseY/32)+1;
  if ( map.map[cy][cx].tipo==0 && jugador.picomc >0) {
    map.map[cy][cx].cambiarTipo(1);
    jugador.picomc--;
    println("Piquetas = "+jugador.picomc);
  }
}