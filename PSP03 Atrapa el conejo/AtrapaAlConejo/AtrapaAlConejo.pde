float x, y;
PImage conejo;
int puntos = 0;

void setup() {
  size(500, 300);
  imageMode(CENTER);
  
  conejo = loadImage("rabbit.png");

  x = random(width);
  y = random(height);
}

void draw() {
  background(#795548);
  fill(255, 0, 0);
  image(conejo, x, y, 45, 60);
}

void mouseClicked() {
  if (dist(mouseX, mouseY, x, y) < 50) {
    x = random(width);
    y = random(height);
    
    puntos++;
    
    println("Puntos: "+puntos);
  }
}