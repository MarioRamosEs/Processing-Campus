float x1,y1;
float b,c,r;

float a = 0;
void setup() {
  size(600,400);
  frameRate(12);
  smooth();
}

void draw() {
  background(225);
  while(a < 360) {
    if (mousePressed == true) {

      if(b>60) {
        b = b - random(2,8);
      }
      else {
        b = b + random(2,8);
      }

      x1=width/2+ b* cos(a);

      if(c>60) {
        c = c - random(2,8);
      }
      else {
        c = c + random(2,8);
      }

      y1= height/2+ c* sin(a);
      fill(0,0,0);

      if(r>90) {
        r = r - random(2,8);
      }
      else {
        r = r + random(2,8);
        a = a+360/random(3,15);
      }

      ellipse(x1,y1,r,r);
      a = a+360/124;
      
      fill(225);
      beginShape(TRIANGLES);
      vertex(width/2-10, height/2-5);
      vertex(width/2-10, height/2-10);
      vertex(width/2-10, height/2-7.5);
      endShape();
    }
    else {
      x1=width/2+ random(60,130)* cos(a);
      y1= height/2+ random(60,130)* sin(a);
      fill(0,0,225);
      ellipse(x1,y1,10,10);
      a = a+360/random(3,15);
    }

    strokeWeight(random(1,5));
    line(width/2, height/2,x1,y1);
  }

  fill(0);
  ellipse(width/2, height/2, 100, 100);

  fill(225);
  ellipse(width/2-15, height/2-10,20,20); //ojo izquierdo
  ellipse(width/2+15, height/2-10,20,20); //ojo derecho



  a = 0;
}

