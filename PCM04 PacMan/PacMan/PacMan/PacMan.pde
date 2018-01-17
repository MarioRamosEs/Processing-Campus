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
int areaDeteccion;

//Colores
color pared = #673AB7;
color suelo = #000000;
color bola = #FFEB3B;
color decision = #009688;

//Variables
PImage imgPlayer, youWin, youLose;
PImage [] imgGhost;
int [][]mapa;
int selector = 0;
int estado = 1;

//Fantasmas
ArrayList<Ghost> fantasmas;
Ghost g1, g2, g3, g4;

void settings() {
	size((int)mapSize.x*tileSize, (int)mapSize.y*tileSize);
}

void setup() {
	imageMode(CENTER);
	rectMode(CENTER);
	ellipseMode(CENTER);
	imgPlayer = loadImage("pacman.png");
	imgGhost = new PImage[4];
	imgGhost[0] = loadImage("azul.png");
	imgGhost[1] = loadImage("rojo.png");
	imgGhost[2] = loadImage("naranja.png");
	imgGhost[3] = loadImage("rosa.png");
	youWin = loadImage("YouWin.png");
  	youLose = loadImage("YouLose.png");

  	//Inicializar fantasmas
  	fantasmas = new ArrayList<Ghost>();

 	//Inicializar el mapa
	mapa = new int[(int)mapSize.y][(int)mapSize.x];
	cargarMapa("mapa1.txt");
	areaDeteccion = tileSize+3;

	//Inicializar fantasmas
	fantasmas.add(new Ghost(imgGhost[0], new PVector(350,  50), 4));
	fantasmas.add(new Ghost(imgGhost[1], new PVector(410, 290), 4));
	fantasmas.add(new Ghost(imgGhost[2], new PVector(550, 130), 3));
	fantasmas.add(new Ghost(imgGhost[3], new PVector(130, 370), 4));
}

void draw(){
	switch(estado){
		case 1:
			juego();
			break;
		case 2:
			gameOver();
			break;
	}	
}

void keyReleased(){
	switch (keyCode) {
		case RIGHT :
		direccion = 2;
		break; 
		case UP :
		direccion = 1;
		break; 
		case LEFT :
		direccion = 4;
		break; 
		case DOWN :
		direccion = 3;
		break; 
		case CONTROL :
		println("Mouse: "+mouseX+" "+mouseY);
		break; 
	}
}

void juego(){
	pintarMapa(new PVector(tileSize/2,tileSize/2)); 
	actualizarPlayer();
	
	for(Ghost f:fantasmas){
		f.update();
	}
}

void gameOver(){
	background(0);
	imageMode(CORNER);
	image(youLose, 0, height/3, width, height/3);
	imageMode(CENTER);
}