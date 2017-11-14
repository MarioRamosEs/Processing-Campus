void setup() {
  size(500, 500);
  
}

void draw() {
  background(255);

  stroke(0, 0, 255);
  fill(0, 0, 255);
  strokeWeight(5);
  textSize(32);
  line(0, 50, width, 50);
  text("Eje X", width/2-50, 100);
  text("0", 5, 40);
  text("MAX", width-100, 40);

  stroke(255, 0, 0);
  fill(255, 0, 0);
  line(50, 0, 50, height);
  text("Eje Y", 70, height/2+50);
  text("0", 25, 30);
  text("MAX", 60, height-25);

  fill(0);
  text("X: "+mouseX+" Y: "+mouseY, mouseX, mouseY);
}