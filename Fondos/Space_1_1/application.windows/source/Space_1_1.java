import processing.core.*; 
import processing.xml.*; 

import peasy.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class Space_1_1 extends PApplet {


PeasyCam cam;

diagonalSystem ds;
float r1, r2, r3, n, rt;
float version = 1.0f;

public void setup() {
  size(1000, 700, P3D);
  smooth();
  ds = new diagonalSystem();

  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(800);
} 

public void draw() {
  fill(0, 30);
  noStroke();

  pushMatrix();
  translate(0, 0, 300);
  rect(0, 0, width, height);
  popMatrix();

  //rotateX((float)radians(mouseY/10));
  //rotateY((float)radians(mouseX/10));
  background(0);

  while (n < 500) {
    ds.anyadir();
    n++;
  }
  ds.actu();
} 

class diagonal {
  int col;
  float anch, x, y, x2, y2, vel, largo, trans, z, z2;

  diagonal(float _x, float _y, int _col, float _anch, float _vel, float _trans, float _z) {
    col = _col;
    anch = _anch;
    largo = random(50);
    x2 = _x;
    y2 = _y;
    x = _x;
    y = _y;
    vel = _vel;
    trans = _trans;
    z2 = random(-600, -100);
    ;
    z = z2 - 15;
  }

  public void actu() {
    stroke(col);
    strokeWeight(3);
    //line(x, y, x2, y2);
    line(x, y, z, x2, y2, z2);
    //x = x + vel;
    //y = y + vel;
    z = z + vel;
    //x2 = x2 + vel;
    //y2 = y2 + vel;
    z2 = z2 + vel;
  }
}

class diagonalSystem {
  ArrayList diagonales;

  diagonalSystem() {
    diagonales = new ArrayList();
  }

  public void actu() {
    for (int i = 0; i < diagonales.size(); i++) {
      diagonal a = (diagonal) diagonales.get(i);
      a.actu();
      if (a.z2 > 200) {
        diagonales.remove(i);
        n--;
      }
    }
  }

  public void anyadir() {
    int colors = color(random(225), random(225), random(225));
    diagonales.add(new diagonal(random(0, width), random(0, height), colors, random(10, 50), 1.5f, random(50, 225), random(-90, -250)));
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#E2E2E2", "Space_1_1" });
  }
}
