//V1.01

mapa map;
player jugador;

PImage life, piqueta, bomba;

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
  
  life = loadImage("vida.png");
  piqueta = loadImage("piqueta.png");
  bomba = loadImage("tallShroom_red.png");

  rectMode(CENTER);
  ellipseMode(CENTER);
  imageMode(CENTER);
}


void draw() {
  if(jugador.win) stop();
    
  if(jugador.vidas < 1){
    println("Has muerto...");
    stop();
  }
  
  map.pintar();
  jugador.actualizar();
}

void keyReleased() {
  switch (keyCode) {
    case UP:     jugador.movArriba(); break;
    case DOWN:   jugador.movAbajo(); break;
    case LEFT:   jugador.movIzquierda(); break;
    case RIGHT:  jugador.movDerecha(); break;
  }
}


void mouseReleased() {
  int cx = (mouseX/32)+1, cy =(mouseY/32)+1;

  if (map.map[cy][cx].tipo==0 && jugador.picomc > 0) {
    map.map[cy][cx].cambiarTipo(1);
    jugador.picomc--;
    println("Piquetas = "+jugador.picomc);
  }
}