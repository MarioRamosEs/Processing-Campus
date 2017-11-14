int[] tab = new int[9]; 
int turno = 1;
int ganador = 0;
PFont ff;

void setup() {
  size(300, 300);
  ff = loadFont("ff.vlw");
  textFont(ff, 20);
}

void draw() {
  pintarTablero();
  ganador = comprobarGanador();

  if (ganador == 1) text("Gana Jugador 1", 10, 150);
  else if (ganador == 2) text ("Gana Jugador 2", 10, 150);
}

void mouseClicked() {
  //Si no se ha acabado el juego...
  if(ganador == 0) cambio(mouseX/100+1, mouseY/100);
}

void cambio(int tx, int ty) {
  int q = tab[getPos(tx, ty)];
  if (q!=1 && q!=2) {
    switch(turno) {
    case 1:
      tab[getPos(tx, ty)] = 1;
      break;
    case -1:
      tab[getPos(tx, ty)] = 2;
    }
    turno=turno*-1;
  }
}

void pintarTablero() {
  for (int p=0; p<9; p++) {
    if (tab[p]==1) fill(0, 255, 0);
    if (tab[p]==2) fill(255, 0, 0);
    if (tab[p]==0) fill(255);
    switch(p) {
    case 0:
      rect(0, 0, 100, 100);
      break;
    case 1:
      rect(100, 0, 100, 100);
      break;
    case 2:
      rect(200, 0, 100, 100);
      break;
    case 3:
      rect(0, 100, 100, 100);
      break;
    case 4:
      rect(100, 100, 100, 100);
      break;
    case 5:
      rect(200, 100, 100, 100);
      break;
    case 6:
      rect(0, 200, 100, 100);
      break;
    case 7:
      rect(100, 200, 100, 100);
      break;
    case 8:
      rect(200, 200, 100, 100);
      break;
    }
  }
  fill(0);
}

int getPos(int tx, int ty) {
  return(3*ty+tx-1);
}