PImage suelo;
PImage casa;
PImage imagenessuelo[];
PImage imagenescasas[];
String nombremapa = "Mapa2.txt";

int [] mapa;
int [] casas;
int pintar;
int ancho = 40;
int alto = 40;
int estado = 1;
int xx, yy;
int sprite = 1;
int sprite2 = 0;
int Scroll;

float Version = 1.4;

String s;

boolean lineas = true;

void setup() {
  mapa = new int[ancho*alto];
  casas = new int[ancho*alto];

  size(ancho*16, alto*16+70);
  suelo = loadImage("Suelo.png");
  casa = loadImage("Casas.png");

  imagenessuelo = hImageSplit(suelo, 32, 32);
  imagenescasas = hImageSplit(casa, 32, 32);
}

void draw() {
  background(0);
  for (int y=0;y<alto;y++) {
    for (int x=0;x<ancho;x++) {
      pintar = mapa[y*ancho+x];
      image(imagenessuelo[pintar], x*16, y*16, 16, 16);

      pintar = casas[y*ancho+x];
      image(imagenescasas[pintar], x*16, y*16, 16, 16);

      if (lineas == true)line(x*16, 0, x*16, ancho*16);
    }
    if (lineas == true)line(0, y*16, alto*16, y*16);
  }
  
  image(suelo, 0-Scroll, alto*16+30, suelo.width/2, 16);
  image(casa, 0-Scroll, alto*16+30+20, casa.width/2, 16);
}

void mouseReleased() {
  if (mouseY > alto*16+30 && mouseY < alto*16+30+20) {
    sprite = (int)(mouseX+Scroll)/16;
    estado = 1;
  }
  if (estado == 1 && mouseY < alto*16 && mouseX < ancho*16) {
    xx = (mouseX/16);
    yy = (mouseY/16);
    mapa[yy*ancho+xx] = sprite;
  }

  if (mouseY > alto*16+30+20) {
    sprite2 = (int)(mouseX+Scroll)/16;
    estado = 2;
  }
  if (estado == 2 && mouseY < alto*16 && mouseX < ancho*16) {
    xx = (mouseX/16);
    yy = (mouseY/16);
    casas[yy*ancho+xx] = sprite2;
  }

  if(estado == 3 && mouseY < alto*16 && mouseX < ancho*16){
    xx = (mouseX/16);
    yy = (mouseY/16);
    println(xx+","+yy);
  }
}


void keyPressed() {
  if(key == 'a'){
    Scroll = Scroll - 16;
  }
  if(key == 'd'){
    Scroll = Scroll + 16;
  }
  if(key == 't'){
    println("Trigger Mode");
    estado = 3;
  }
  if (key == CODED) {
    if (keyCode == UP) {
      s = "";
      for (int y=0;y<alto;y++) {
        for (int x=0;x<ancho;x++) {
          pintar = mapa[y*ancho+x];
          s = s+pintar+",";
        }
        s = s + " ";
      }

      s = s + "-" + " ";
      for (int y=0;y<alto;y++) {
        for (int x=0;x<ancho;x++) {
          pintar = casas[y*ancho+x];
          s = s+pintar+",";
        }
        s = s + " ";
      }

      String[] list = split(s, ' ');
      saveStrings(nombremapa, list);
      println("Mapa exportado!!");
    }

    if (keyCode == DOWN) {
      println("Cargando mapa...");
      String suelo2 = "";
      String casas2 = "";
      String Txt[] = loadStrings(nombremapa);
      for (int i = 0; i<Txt.length; i++) {
        if (i < 40) suelo2 = suelo2 + Txt[i];
        if (i > 40) casas2 = casas2 + Txt[i];
      }
      for (int i = 0; i<suelo2.length(); i++) {
        mapa = int(split(suelo2, ','));
      }
      
      for (int i = 0; i<casas2.length(); i++) {
        casas = int(split(casas2, ','));
      }
      println("... Listo!");
    }

    if (keyCode == LEFT) {
      lineas = false;
    }

    if (keyCode == RIGHT) {
      lineas = true;
    }
  }
}



PImage[] hImageSplit(PImage source, int width, int height) {
  return ImageSplit(source, 0, 0, (int)(source.width/width)-1, width, height);
}

PImage[] ImageSplit(PImage source, int row, int startTile, int endTile, int width, int height) {
  PImage[] resoult = new PImage[endTile-startTile+1];
  for (int x = startTile; x <= endTile; x++) {
    resoult[x-startTile] = createImage(width, height, ARGB);
    resoult[x-startTile].copy(source, x*width, row*height, width, height, 0, 0, width, height);
  }
  return resoult;
}

