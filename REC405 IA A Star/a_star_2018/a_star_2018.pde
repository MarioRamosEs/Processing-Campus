Pixel[][] pixelMap = new Pixel[30][30];
PVector pixelSize = new PVector(20, 20);
int selectedType = 0;

void settings() {
  size((int)(pixelMap[0].length * pixelSize.x), (int)(pixelMap.length * pixelSize.y));
}

void setup() {
  //noStroke();
  for (int y = 0; y < pixelMap.length; ++y) {
    for (int x = 0; x < pixelMap[0].length; ++x) {
      PVector pos = new PVector(x*pixelSize.x, y*pixelSize.y);
      pixelMap[y][x] = new Pixel(pos, pixelSize, 1);
    }
  }
}

void draw() {
  //Draw map
  for (int y = 0; y < pixelMap.length; ++y) {
    for (int x = 0; x < pixelMap[0].length; ++x) {
      pixelMap[y][x].draw();
    }
  }
}

void mouseReleased() {
  int x = (int)(mouseX/pixelSize.x);
  int y = (int)(mouseY/pixelSize.y);

  pixelMap[y][x].setType(selectedType);
}

void keyReleased() {
  switch(key) {
  case '1':
    selectedType = 1;
    println("Poniendo suelo");
    break;
  case '2':
    selectedType = 2;
    println("Poniendo paredes");
    break;
  case '3':
    selectedType = 3;
    println("Poniendo inicio");
    break;
  case '4':
    selectedType = 4;
    println("Poniendo final");
    break;
  }
}