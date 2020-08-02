float Version = 1.17;

PImage fondo;
TileMap tm;

//Ash-------------------
int direccion = 3, CambioAsh, xx, yy;
float  xAsh = 15*16/2, yAsh = 11*16/2;
boolean andando = false;
PImage ash;
PImage imagenesash[];

void settings() {
  size(15*16, 11*16);
}

void setup() {
  tm = new TileMap();
  //size(15*16, 11*16);
  ash = loadImage("Ash.png");
  fondo = loadImage("Fondo.png");
  imagenesash = hImageSplit(ash, 15, 20);
}

void draw() {
  background(fondo);
  tm.actu();
  ActuAsh();
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
