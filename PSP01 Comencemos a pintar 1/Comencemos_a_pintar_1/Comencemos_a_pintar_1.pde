int x;

void setup() {
  size(600, 400); 
  x = 100;
}

void draw() {
  background(0);
  //Cuadrado Azul
  fill(0, 0, 255);
  rect(100, 100, 50, 50);
  //Redonda Roja
  fill(255, 0, 0);
  ellipse(200, 200, 50, 50);
  //Cuadrado Verde
  fill(0, 255, 0);
  rect(x, 300, 50, 50);
  x = x + 1;
}