int profundidad = 5;

void setup() {
  size(200, 200);
  noStroke();
  smooth();
  noLoop();
}

void draw() {
  fill(0);
  text("Profundidad: "+profundidad, 0, 10);
  circuloRecursivo(100, 100, 85, profundidad);
}

void circuloRecursivo(int x, int y, int radius, int num) {
  float tt = 126 * num / 4.0;
  fill(tt);
  ellipse(x, y, radius*2, radius*2);
  if (num>1) {
    num=num-1;
    circuloRecursivo(x-radius/2, y, radius/2, num);
    circuloRecursivo(x+radius/2, y, radius/2, num);
  }
}