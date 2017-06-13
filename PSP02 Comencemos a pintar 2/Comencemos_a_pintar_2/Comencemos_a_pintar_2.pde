int x;
color Cbola = color(255, 0, 0);

void setup() {
  size(600, 400); 
  x = 100;
}

void draw() {
  background(0);
  //Cuadrado Azul
  fill(0, 0, 255);
  rect(mouseX, mouseY, 50, 50);
  //Redonda Roja
  fill(Cbola);
  ellipse(200, 200, 50, 50);
  //Cuadrado Verde
  fill(0, 255, 0);
  rect(x, 300, 50, 50);
  x = x + 1;
}

void mouseClicked() {
  x = 100;
}

void keyReleased() {
  if (key=='r') {
    Cbola = color(255, 0, 0);
  }
  if (key=='b') {
    Cbola = color(0, 0, 255);
  } 
  if (keyCode==UP) {
    Cbola = color(255, 255, 255);
  } 
  if (keyCode==DOWN) {
    Cbola = color(248, 14, 193);
  }
}