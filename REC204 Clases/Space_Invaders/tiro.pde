class tiro {
  int xbala, ybala, dar;
  PImage bala;

  tiro() {
    bala = loadImage("bala.png");
    xbala = -99;
    ybala = -99;
  }

  void pum() {
    xbala = mouseX;
    ybala = 550;
  }

  void actu() {
    ybala = ybala - 1;
    image(bala, xbala, ybala);
  }
}

