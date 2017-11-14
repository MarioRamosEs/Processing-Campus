int yb=300;
int xb=10;
int velx=3;
int vely=3;
int velp1=0; 
int velp2=0;
int ypi=5; 
int pt1=0;
int pt2=0;
int ypd=5;

void setup() {
  size(600, 600);
  textSize(39);
}

void draw() {
  text(pt1, 80, 50);
  text(pt2, 500, 50);

  //Colision pala izquierda
  if (xb<20&&yb>ypi&&yb<(ypi+80)) {
    velx=velx*-1;
    //vely=vely*-1;
  }

  //Colision pala derecha
  if (xb>578&&yb>ypd&&yb<(ypd+80)) {
    velx=velx*-1;
    //vely=vely*-1;
  }

  //Fondo semi transparente
  fill(0, 0, 0, 80);
  rect(0, 0, 600, 600);

  //Pinta pelota
  fill(0, 255, 0);
  ellipse(xb, yb, 20, 20); 

  //Muevo pelota
  xb=xb+velx;
  yb=yb+vely;

  //Pinta las palas
  rect(0, ypi, 20, 80);
  ypi=ypi+velp2;
  rect(578, ypd, 20, 80);
  ypd=ypd+velp1;

  //Colisiones con los lados
  if (xb<10) {
    velx=velx*-1;
    pt2=pt2+1;
  }
  if (xb>590) {
    velx=velx*-1;
    pt1=pt1+1;
  }
  if (yb<10)  vely=vely*-1;
  if (yb>590) vely=vely*-1;
}

void keyPressed() {
  if (key=='s') {
    velp2=4;
  }
  if (key=='w') {
    velp2=-4;
  }
  if (keyCode==DOWN) {
    velp1=4;
  }
  if (keyCode==UP) {
    velp1=-4;
  }
}

void keyReleased() {
  if (key=='s') {
    velp2=0;
  } 
  if (key=='w') {
    velp2=0;
  }
  if (keyCode==DOWN) {
    velp1=0;
  }
  if (keyCode==UP) {
    velp1=-0;
  }
}