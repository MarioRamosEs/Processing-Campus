class diagonal {
  color col;
  float anch, x, y, x2, y2, velx, vely, largo, trans;
  float radio = 60;
  diagonal(float _x, float _y, color _col, float _anch, float _velx, float _trans, float _vely) {
    col = _col;
    anch = _anch;
    largo = random(50);
    x2 = _x + largo;
    y2 = _y + largo;
    x = _x;
    y = _y;
    velx = _velx;
    vely = _vely;
    trans = _trans;
  }

  void actu() {
    stroke(col+20);
   // fill(col);
    ellipse(x, y, anch, anch);
    if(radio > anch)radio = radio - 1;
    //fill(col-20, 40);
    ellipse(x, y, radio, radio);
    x = x + velx;
    y = y + vely;
    if(x+anch/2 > width || x-anch/2 < 0) velx = velx*-1;
    if(y+anch/2 > height || y-anch/2 < 0) vely = vely*-1;
  }
}

