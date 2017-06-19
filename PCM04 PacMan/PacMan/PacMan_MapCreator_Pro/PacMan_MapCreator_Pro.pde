PImage [][]tiles;
int selX, selY;
int [][]mapa;
int tam = 12;
boolean borrar = false;
boolean reja = true;
boolean bolita = false;

int mapw = 50;
int maph = 50;

void settings(){
  size(mapw*tam, maph*tam+200);
}

void setup() {

  PImage raw_img = loadImage("tiles.jpg");
  tiles = new PImage[30][4];
  mapa = new int[mapw][maph];

  for (int y = 0; y < 4; y++)
    for (int x = 0; x < 30; x++) {
      tiles[x][y] = createImage(8, 8, RGB);
      for (int a = 0; a < 8; a++)
        for (int b = 0; b < 8; b++) tiles[x][y].pixels[a*8+b] = raw_img.get(b+y*8, a+x*8);
    }


  for (int y = 0; y < maph; y++) for (int x = 0; x < mapw; x++) mapa[x][y] = -1;
}

void draw() {
  background(120, 120, 120);
  stroke(255);
  for (int y = 0; y < 4; y++) {
    for (int x = 0; x < 30; x++) {
      image(tiles[x][y], x*tam, y*tam, tam, tam);
      line(x*tam, y*tam, x*tam, y*tam+tam);
    }
  }

  for (int y = 0; y < maph; y++) {
    for (int x = 0; x < mapw; x++) {
      int a = mapa[x][y]/30;
      int b = mapa[x][y]%30;
      if (mapa[x][y] >= 0) {
        image(tiles[a][b], x*tam, 200+y*tam, tam, tam);
      } else {
        fill(0);
        noStroke();
        rect(x*tam, 200+y*tam, tam, tam);
        if (mapa[x][y] == -2) {
          fill (255, 255, 0); 
          noStroke();
          smooth();
          ellipse(x*tam+tam/2, 200+y*tam+tam/2, tam-tam/2, tam-tam/2);
        }
      }
    }
  }

  if (reja) {
    stroke(255);
    for (int y = 0; y <= maph; y++) {
      line(0, 200+y*tam, mapw*tam, 200+y*tam);
    }
    for (int x = 0; x <= mapw; x++) {
      line(x*tam, 200, x*tam, 200+maph*tam);
    }
  }

  int corX = (mouseX<mapw*tam && mouseY > 200 && mouseY < 200+maph*tam) ? int(mouseX/tam)*tam : mouseX;
  int corY = (mouseX<mapw*tam && mouseY > 200 && mouseY < 200+maph*tam) ? int((mouseY-200)/tam)*tam+200 : mouseY;

  image(tiles[selX][selY], corX, corY, tam, tam);
}

void mouseReleased() {
  if (mouseX<30*tam && mouseY<4*tam) {
    selX = int(mouseX/tam);
    selY = int(mouseY/tam);
  }

  if (mouseX<mapw*tam && mouseY > 200 && mouseY < 200+maph*tam) {
    int corX = int(mouseX/tam);
    int corY = int((mouseY-200)/tam);
    if (!borrar) 
      mapa[corX][corY] = selX*30+selY;
    else
      if (!bolita)
        mapa[corX][corY] = -1;
      else
        mapa[corX][corY] = -2;
  }
}

void keyReleased() {
  if (key=='b') borrar = !borrar;

  if (key=='i') bolita = !bolita;

  if (key=='r') reja = !reja;

  if (key=='s') {
    String[] guardar = new String[maph];

    for (int y = 0; y < maph; y++) {
      guardar[y] = "";
      for (int x = 0; x < mapw; x++) {
        int selX = mapa[x][y]/30;
        int selY = mapa[x][y]%30;

        if (x != 0) {
          guardar[y] += ","+(selY*30+selX);
        } else {
          guardar[y] += (selY*30+selX);
        }
      }
    }

    saveStrings("mapa2.txt", guardar);
  }

  if (key=='c') {
    String[] cargar = loadStrings("mapa2.txt");
    for (int y = 0; y < maph; y++) {
      String[] fila = split(cargar[y], ',');
      for (int x = 0; x < mapw; x++) {
        int selX = int(fila[x])%30;
        int selY = int(fila[x])/30;
        mapa[x][y]=int(selY+selX*30);
      }
    }
  }
}