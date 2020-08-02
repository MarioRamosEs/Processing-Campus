int [] mapa = {
  0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0
};

int pintar;
int ancho = 5;
int alto = 5;

int xb = 200;   
int yb = 200;

int xx, yy;

String s, q;

void setup() {
  size(300, 300);
}

void draw() {
  for (int y=0;y<alto;y++) {
    for (int x=0;x<ancho;x++) {
      pintar = mapa[y*ancho+x];
      if (pintar == 0) fill(0);
      if (pintar == 1) fill(0, 225, 0);
      rect(x*32, y*32, 32, 32);
    }
  }
}

void mousePressed() {
  xx = (mouseX/32);
  yy = (mouseY/32);
  print(xx+"("+mouseX+")  ");
  print(yy+"("+mouseX);
  println();

  if (mapa[yy*ancho+xx] == 0) mapa[yy*ancho+xx] = 1; 
  else mapa[yy*ancho+xx] = 0;
}

void keyPressed() {
  q = ""; 
  s = "";
  if (key == CODED) {
    if (keyCode == UP) {
      for (int y=0;y<alto;y++) {
        for (int x=0;x<ancho;x++) {    
          int e = mapa[y*ancho+x];
          if (e == 1) { 
            q = "rect(x+"+(x*20)+",y+"+(y*20)+",20,20);";   
            s = s+q+" "; 
            println(q);
          }
          rect(x*32, y*32, 32, 32);
          
        }
      }
      String[] lista = split(s, ' ');
      saveStrings("c.txt", lista);
    }
  }
}

