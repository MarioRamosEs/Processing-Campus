class diagonal {
  color col;
  float anch, trans;
  PVector pos, pos2, vel;

  diagonal(PVector pos, PVector pos2, PVector vel, color col, float anch, float trans) {
    this.col = col;
    this.anch = anch;
    this.trans = trans;
    this.pos = pos;
    this.pos2 = pos2;
    this.vel = vel;
  }

  void actu() {
    //Sumar el vector velocidad a las dos posiciones
    pos.add(vel);
    pos2.add(vel);
    
    //Pintar la diagonal
    stroke(col, trans);
    strokeWeight(anch);
    line(pos.x, pos.y, pos2.x, pos2.y);
  }
}