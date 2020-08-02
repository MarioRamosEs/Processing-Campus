float Version = 1;
TileMap tm;
Personaje tio;
PImage mousemap, hiligth;

void setup() {
  size(1000, 600); 
  tm = new TileMap(2);
  tio = new Personaje(200, 200);
  mousemap = loadImage("mousemap.png");
  hiligth = loadImage("hilight.png");
}

void draw() {
  background(225);
  tio.actu();
  tm.pintar();
  
  //rejilla();
  //pintarHiligth();
}


void rejilla() {
  fill(0);
  for (int x = 0; x < width/64; x++) {
    line(x*64, 0, x*64, height);
    for (int y = 0; y < height/32; y++) {
      line(0, y*32, width, y*32);
      text((x-6)+"  "+(y-1), x*64, y*32);
    }
  }
}






/*int xclic, yclic, xclic2, yclic2;
int xcasilla, ycasilla;
void pintarHiligth(float x, float y) {
  xclic = x/64 - 6;
  yclic = y/32;
  xclic2 = x%64;
  yclic2 = y%32;

  detectarcasilla(xclic, yclic, xclic2, yclic2);

  int yy = xcasilla*16+ycasilla*16;
  int xx = -ycasilla*32+xcasilla*32;

  image(hiligth, xx+tm.offSetX, yy);
}*/




