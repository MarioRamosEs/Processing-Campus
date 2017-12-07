class diagonalSystem {
  ArrayList diagonales;

  diagonalSystem() {
    diagonales = new ArrayList();
  }

  void actu() {
    for (int i = 0; i < diagonales.size()-1; i++) {
      diagonal a = (diagonal) diagonales.get(i);
      a.actu();
    }
  }
  
  void refrescar(float x, float y, float velx, float vely, int id, String p){
    diagonal a = (diagonal) diagonales.get(id);
    a.x = x;
    a.y = y;
    a.velx = velx;
    a.vely = vely;
    if (p.equals("p1")) puntos1++;
    if (p.equals("p2")) puntos2++;
  }

void anyadir() {
    color colors = color(0, 225, 0);
    float x = 300;
    float y = 300;
    float vel = 3;
    diagonales.add(new diagonal(x, y, colors, 30, vel, random(50, 225), diagonales.size()));
  }
}




class diagonal {
  color col;
  float anch, x, y, velx, vely, largo, trans;
  float id;
  diagonal(float _x, float _y, color _col, float _anch, float _vel, float _trans, float _id) {
    col = _col;
    anch = _anch;
    x = _x;
    y = _y;
    trans = _trans;
    id = _id;

    velx = _vel;
    vely = _vel;
  }

  void actu() {
    x = x + velx;
    y = y + vely;
    stroke(col, trans);
    ellipse(x, y, anch, anch);
    stroke(225, trans);
    ellipse(x, y, anch/2, anch/2);
  }
}
