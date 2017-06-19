pajaro p;
PImage modelop;

void pajaro() {
  p.actualizar();
}

class pajaro {
  PVector posp;
  PVector grav;
  PVector impu;
  pajaro(PVector posp_) {
    posp=posp_; 
    grav=new PVector(0, 3);
    impu=new PVector(0, -50);
  }
  void actualizar() {
    image (modelop, posp.x, posp.y, 100, 100);
    posp.add(grav);
  }
  void darImpulso() {
    posp.add(impu);
  }
}


void keyPressed() {
  if (key==' ') {
    p.darImpulso();
  }
}