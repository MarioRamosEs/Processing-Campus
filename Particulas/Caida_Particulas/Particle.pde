class Particle {
  float x, y0, v0;
  float gravedad = 9.81;
  float tiempo = 0;
  color col;
  float y;
  float gr = random(1.2, 3);
  Particle(float _x, float _y, float _vel, color _col) {
    x = _x;  
    y0 = _y;
    col = _col;
  }

  void actu() {
    fill(col, 150);
    ellipse(x, y, 15, 15);

    fill(col+100);
    ellipse(x, y, 10, 10);
    //andar_v2();

    andar_v3();
  }

  /*void andar_v2() {
   if (mouseX > x) if (friccionx < vel) friccionx = friccionx + 0.2;
   if (mouseX < x) if (friccionx > -vel) friccionx = friccionx - 0.2;
   x = x + friccionx;
   
   if (mouseY > y) if (fricciony < vel) fricciony = fricciony + 0.2;
   if (mouseY < y) if (fricciony > -vel) fricciony = fricciony - 0.2;
   y = y + fricciony;
   }
   */

  void andar_v3() {
    tiempo = tiempo + 1.0/10;
    y = y0 + v0*tiempo + (gravedad / 2) *tiempo *tiempo;

    if (y > height && (v0+gravedad*tiempo) > 0) {
      v0 = -( (v0+gravedad*tiempo) /gr);
      y0=height;

      tiempo = 0;
    }
  }
} 

