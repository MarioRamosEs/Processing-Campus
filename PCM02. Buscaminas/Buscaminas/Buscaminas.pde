/*
  Buscaminas 
 19-12-16
 Mario Ramos
 */

PImage mina, bandera, youWin, youLose;
int[][] mapaFondo;
int[][] mapaJugador;
int[][] minas;
int size = 10;
int tamanyo = 30;
int estado = 0;
int nMinas = 0, minasColocadas = 0;

void settings() {
  size(size*tamanyo*2+50, size*tamanyo+50);
}

void setup() {
  mapaFondo = generarMapaFondo();
  mapaJugador = generarMapa();
  minas = buscarMinas(mapaFondo);
  mina = loadImage("mina.png");
  bandera = loadImage("flag_red.gif");
  youWin = loadImage("YouWin.png");
  youLose = loadImage("YouLose.png");
}

void draw() {
  background(0);
  if (heGanado(mapaJugador, mapaFondo)) estado = 1;
  if (estado == 0) {
    pintarMapa(mapaJugador, 0);
    pintarMapa(mapaFondo, size*tamanyo+50);
    pintarNumeros(size*tamanyo+50);
    pintarNumerosJug(mapaJugador, 0);
    pintarNMinas(new PVector(20, height-20));
  } 
  if (estado == -1) {
    println("GAME OVER");
    pintarMapa(mapaFondo, 0);
    image(youLose, 0, height/2-youLose.height/2, width, height/3);
  }
  if (estado == 1) {
    println("YOU WIN");
    pintarMapa(mapaFondo, 0);
    image(youWin, 0, height/2-youWin.height/2, width, height/3);
  }
}

void mouseClicked() {
  if (estado == 0) {
    int posY, posX;
    posY = mouseY/tamanyo;
    posX = mouseX/tamanyo;
    if (mouseButton == LEFT) {
      if (posY>0 || posY<size || posX>0 || posX<size) explotar(posX, posY);
    } else {  //clic derecho
      if (mapaJugador[posY][posX] == 0) {
        mapaJugador[posY][posX] = 3;
        minasColocadas++;
      } else if (mapaJugador[posY][posX] == 3) {
        mapaJugador[posY][posX] = 0;
        minasColocadas--;
      }
    }
  }
}