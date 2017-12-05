PImage fondo;
int x, y;
int vel = 3;

void setup() {
	size(322, 322);
	fondo = loadImage("fondo.png");
	x = width/2; y = height/2;
}

void draw() {
	image(fondo, 0, 0, width, height);

	fill(#2196F3);
	ellipse(x, y, 10, 10);
}

void keyPressed(){
	if (keyCode == UP) y-=vel;
	if (keyCode == DOWN) y+=vel;
	if (keyCode == LEFT) x-=vel;
	if (keyCode == RIGHT) x+=vel;
}