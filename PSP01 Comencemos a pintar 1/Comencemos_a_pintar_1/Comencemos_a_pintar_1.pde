int x;

void setup() {
  size(400, 400); 
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
}