PImage nave;
int formacion = 2;

int nivel = 5;

void setup() {
  nave = loadImage("nave.png");
  //imageMode(CENTER);
}

void settings() {
  size(nivel*2*50-50, nivel*50);
}

void draw() {
  background(0);
  switch(formacion) {
  case 1:
    formacion1();
    break;
  case 2:
    formacion2();
    break;
  }
  
  if(keyPressed && key=='q') formacion = 1;
  if(keyPressed && key=='w') formacion = 2;
}

void formacion1() {
  for (int y=0; y<nivel; y++) {
    for (int x=0; x<nivel; x++) {
      image(nave, x*50, y*50, 50, 50);
      print("*");
    }
    println();
  }
}

void formacion2() {
  int espacios = nivel*2;
  int naves = 1;

  int x = 0, y = 0;

  for (int fila = 0; fila<nivel; fila++) {
    x = 0;
    for (int espaciosPintados = 0; espaciosPintados<espacios/2-1; espaciosPintados++) {
      //Asigna los espacios a la X
      //Igual que hacer x = 50*(espacios/2)
      x=x+50;
      print(" ");
    }

    for (int navesPintadas = 0; navesPintadas<naves; navesPintadas++) {
      image(nave, x, y, 50, 50);
      x=x+50;
      print("*");
    }
    espacios = espacios-2;
    naves = naves+2;
    y=y+50;
    println();
  }
  println("=================");
}