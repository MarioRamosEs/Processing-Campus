class tubo2 {
  PVector mov2;
  PVector pos2;
  PVector tam2;
  tubo2(PVector pos_2, PVector tam_2) {
    pos2 = pos_2;
    tam2 = tam_2;
    mov2 = new PVector (-5, 0);
  }
  void actualizar() {
    // println(pos2.x+" - "+ pos2.y);

    image (modelo2, pos2.x, pos2.y, tam2.x, tam2.y);
    pos2.add(mov2);
    if (pos2.x==0) {
      pos2.x=1000;
    }
    if (dist(p.posp.x, p.posp.y, pos2.x, pos2.y) < (tam2.y*0.75)) {
      dead=true; 
      fuera=true;
      fuera2=true;
    }
  }
}