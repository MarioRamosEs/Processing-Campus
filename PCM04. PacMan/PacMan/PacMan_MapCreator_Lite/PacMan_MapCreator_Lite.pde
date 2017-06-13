/* TIPOS DE TILES
 0 - PARED
 1 - SUELO CON BOLA
 2 - SUELO SIN BOLA
 3 - SUELO DE DECISION CON BOLA
 4 - SUELO DE DECISION SIN BOLA
 5 - VACÍO*/


//Tamaños
PVector mapSize  = new PVector(30, 20);
int tileSize = 20;

//Colores
color pared = #673AB7;
color suelo = #000000;
color bola = #FFEB3B;
color decision = #009688;

//Variables
int [][]mapa;
int selector = 0;

void settings() {
  size((int)mapSize.x*tileSize, (int)mapSize.y*tileSize);
}

void setup() {
  imageMode(CENTER);
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  //Inicializar el mapa a 5
  mapa = new int[(int)mapSize.y][(int)mapSize.x];
  for (int y = 0; y < mapSize.y; y++) for (int x = 0; x < mapSize.x; x++) mapa[y][x] = 0;
}

void draw(){
 pintarMapa(new PVector(tileSize/2,tileSize/2)); 
}

void mouseReleased() {
  int posY, posX;
  posY = mouseY/tileSize;
  posX = mouseX/tileSize;

  if (posY>0 || posY<(int)mapSize.y || posX>0 || posX<(int)mapSize.x) cambiarTile(posX, posY, selector);
}

void keyReleased(){
  switch (int(key)) {
   case 'q' :
   selector = 0;
   break; 

   case 'w' :
   selector = 1;
   break;  

   case 'e' :
   selector = 2;
   break;  

   case 'r' :
   selector = 3;
   break;  

   case 't' :
   selector = 4;
   break;  

   case 'y' :
   selector = 5;
   break; 

   case 'g' :
   guardarMapa("mapa1.txt");
   break; 

   case 'c' :
   cargarMapa("mapa1.txt");
   break; 
 }
 println("selector: "+selector);
}