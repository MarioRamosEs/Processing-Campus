import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class laberinto extends PApplet {

PImage fondo;
int x, y;
int vel = 3;

public void setup() {
	
	fondo = loadImage("fondo.png");
	x = width/2; y = height/2;
}

public void draw() {
	image(fondo, 0, 0, width, height);

	fill(0xff2196F3);
	ellipse(x, y, 10, 10);
}

public void keyPressed(){
	if (keyCode == UP) y-=vel;
	if (keyCode == DOWN) y+=vel;
	if (keyCode == LEFT) x-=vel;
	if (keyCode == RIGHT) x+=vel;
}
  public void settings() { 	size(322, 322); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "laberinto" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
