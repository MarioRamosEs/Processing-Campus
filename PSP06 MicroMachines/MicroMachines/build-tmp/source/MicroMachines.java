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

public class MicroMachines extends PApplet {

PShape imgCoche;
float x, y, r=90, vr;
PVector cocheSize = new PVector(50, 25);
float margenChoque;

public void setup() {
  
  shapeMode(CENTER);
  imgCoche = loadShape("coche.svg");

  margenChoque = cocheSize.x/2;
  x = width/2; 
  y = height/2;  //Establecemos el coche en el centro del Canvas.
} 

public void draw() {
  background(0xff9E9E9E);

  //L\u00edmites pantalla. Cuando choca el coche gira 180 grados.
  if (x<0+margenChoque) r = r - 180;
  if (x>width-margenChoque) r = r - 180;
  if (y<0+margenChoque) r = r - 180;   
  if (y>height-margenChoque) r = r - 180;

  //Resta de velocidad fricci\u00f3n.
  if (vr>0) vr=vr-0.1f;
  if (vr<0) vr=vr+0.1f;

  //Transformaci\u00f3n coordenadas cartesianas a polares.
  x = x + sin(radians(-r))*vr;
  y = y + cos(radians(-r))*vr;

  pushMatrix();
  translate(x, y);
  rotate(radians(r-90));
  shape(imgCoche, 0, 0, cocheSize.x, cocheSize.y);
  popMatrix();
}

public void keyPressed() {
  if (key == 'a' || key == 'A') r = r - 8;
  if (key == 'd' || key == 'D') r = r + 8;
  if (key == 'w' || key == 'W') vr = vr - 0.5f;
  if (key == 's' || key == 'S') vr = vr + 0.5f;
}
  public void settings() {  size(512, 512); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "MicroMachines" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
