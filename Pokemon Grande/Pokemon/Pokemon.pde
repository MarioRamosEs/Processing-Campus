float Version = 1.201;

TriggerSystem ts;
PImage suelo, casa, ash;
PImage imagenessuelo[];
PImage imagenescasas[];
PImage imagenesash[];
int [] mapa;
int [] casas;
int pintar;
int ancho = 40;
int alto = 40;
int estado = 1;
int sprite = 1;
int sprite2 = 0;
String s;
String Txt[];

//Ash-------------------
int direccion = 3, CambioAsh, xx, yy;
float  xAsh = 80, yAsh = 80;
boolean andando = false;

void settings() {
  size(ancho*16, alto*16);
}

void setup() {
  mapa = new int[ancho*alto];
  casas = new int[ancho*alto];
  suelo = loadImage("Suelo.png");
  casa = loadImage("Casas.png");
  ash = loadImage("Ash.png");
  imagenessuelo = hImageSplit(suelo, 32, 32);
  imagenescasas = hImageSplit(casa, 32, 32);
  imagenesash = hImageSplit(ash, 15, 20);

  ts = new TriggerSystem();

  cargarmapa(1);
}

void draw() {
  switch(estado) {
  case 1:
    caminando();
    break;
  case 2:
    batalla();
    break;
  }
}






void cargarmapa(int modelo) {
  String suelo2 = "";
  String casas2 = "";
  String triggers2 = "";
  Txt = loadStrings("Mapa"+modelo+".txt");

  ts.borrar();

  for (int i = 0; i<Txt.length; i++) {
    if (i < 40) suelo2 = suelo2 + Txt[i];
    if (i > 40 && i < 81) casas2 = casas2 + Txt[i];
    if (i > 81) triggers2 = triggers2 + Txt[i];
  }
  for (int i = 0; i<suelo2.length(); i++) {
    mapa = int(split(suelo2, ','));
  }

  for (int i = 0; i<casas2.length(); i++) {
    casas = int(split(casas2, ','));
  }

  for (int i = 0; i<triggers2.length(); i++) {
    String[] lol = split(triggers2, ',');
    int[] po = new int [6];
    po[0] = Integer.parseInt(lol[0]);
    po[1] = Integer.parseInt(lol[1]);
    po[2] = Integer.parseInt(lol[2]);
    po[3] = Integer.parseInt(lol[3]);
    po[4] = Integer.parseInt(lol[4]);
    po[5] = Integer.parseInt(lol[5]);

    ts.anyadir(po[0], po[1], po[2], po[3], po[4], po[5]);
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