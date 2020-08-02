class diagonal {
  color col;
  float anch, x, y, x2, y2, vel, largo, trans, z, z2;

  diagonal(float _x, float _y, color _col, float _anch, float _vel, float _trans, float _z) {
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

  void actu() {
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

