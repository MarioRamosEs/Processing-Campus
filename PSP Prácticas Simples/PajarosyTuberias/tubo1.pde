class tubo1 {
  PVector mov;
  PVector pos;
  PVector tam;
  tubo1(PVector pos_, PVector tam_) {
    pos = pos_;
    tam = tam_;
    mov = new PVector (-5, 0);
  }
  void actualizar() {
    //println(pos.x+" - "+ pos.y);

    image (modelo, pos.x, pos.y, tam.x, tam.y);
    pos.add(mov);
    if (pos.x==0) {
      pos.x=1000;
    }
    if (dist(p.posp.x, p.posp.y, pos.x, pos.y) < (tam.y*0.75)) {
      dead=true; 
      fuera=true;
      fuera2=true;
    }
  }
}