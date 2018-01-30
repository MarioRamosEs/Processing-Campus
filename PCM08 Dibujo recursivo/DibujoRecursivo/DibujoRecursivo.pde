//Based in https://codepen.io/DonKarlssonSan/pen/PJQvKG by Johan Karlsson

float angle = 0;
float iterations = 4;

color from = color(255, 0, 0);
color to = color(0, 0, 255);

void setup() {
  size(720, 720);
  strokeWeight(3);
  noFill();
  println("Utiliza las teclas númericas del 1 al 7 para cambiar las iteraciones");
}

void draw() {
  //background
  noStroke();
  fill(255, 10);
  rect(0, 0, width, height);

  angle += 0.001;
  float x = width / 2;
  float y = height / 2;
  d(iterations, x, y);
  
  fill(0);
  text("Utiliza las teclas númericas del 1 al 7 para cambiar las iteraciones", 0, 15);
}

void d(float iteration, float x, float y) {
  //colorMode(HSB, 100);
  //fill(x, y, 100);

  color interB = lerpColor(from, to, iteration/iterations);
  stroke(interB);

  if (iteration <= 0) return;
  iteration--;
  pushMatrix();
  translate(x, y);
  rotate(iteration * angle);
  float size = iteration / iterations * height / 3;
  rect(-size/2, -size/2, size, size);
  d(iteration, -size/2, -size/2);
  d(iteration, size/2, size/2);
  d(iteration, size/2, -size/2);
  d(iteration, -size/2, size/2);
  popMatrix();
}


//Cambia las iteraciones con las teclas.
void keyPressed() {
  if (key >= 49 &&  key <= 55) {
    iterations = Character.getNumericValue(key);
  }
}