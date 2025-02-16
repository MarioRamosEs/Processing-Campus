int selectedType = 1;
Map map = new Map();
Astar astar = new Astar(map);

void settings() { 
  size((int)(map.pixelMap[0].length * map.pixelSize.x), (int)(map.pixelMap.length * map.pixelSize.y)); //Establece el tamaño de la ventana
}

void setup() {
  instrucciones();
  //noStroke();
  textSize(7);
}

void draw() {
  map.draw(); //Draw map
}

void mouseReleased() { //Actualiza el tipo de la casilla que hacemos click
  int x = (int)(mouseX/map.pixelSize.x);
  int y = (int)(mouseY/map.pixelSize.y);

  map.pixelMap[y][x].setType(selectedType);
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
  case ' ': //Inicio del algoritmo
    astar.init();
    break;
  }
}

void instrucciones() {
  println("Selecciona el tipo de casilla con los números");
  println("1- Suelo");
  println("2- Pared");
  println("3- Inicio");
  println("4- Final");
  println("Pulsa espacio para buscar el camino");
}