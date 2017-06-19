PImage hola;

void setup() {
  hola = loadImage("logo.jpg");
  size(300, 300);
}

void draw() {
  image(hola, 0, 0, width, height);
}