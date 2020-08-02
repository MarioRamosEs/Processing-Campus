class Particle {
  float x, y, vel, friccionx, fricciony;
  color col;
  Particle(float _x, float _y, float _vel, color _col) {
    x = -x;  
    y = _y; 
    vel = _vel;
    col = _col;
  }

  void actu() {
    fill(col, 150);
    ellipse(x, y, 15, 15);

    fill(col);
    ellipse(x, y, 10, 10);
    andar_v2();
  }

  void andar_v2() {
    if (mouseX > x) if (friccionx < vel) friccionx = friccionx + 0.2;
    if (mouseX < x) if (friccionx > -vel) friccionx = friccionx - 0.2;
    x = x + friccionx;

    if (mouseY > y) if (fricciony < vel) fricciony = fricciony + 0.2;
    if (mouseY < y) if (fricciony > -vel) fricciony = fricciony - 0.2;
    y = y + fricciony;
  }
} 

