class balaclass{
  float x,y;
  balaclass(float _x){
    x = _x;
  }

  void actu() {
    y = y - 1;
    image(bala, x, y);
  }
}

class balaSystem {
  ArrayList balas;      
  
  balaSystem() {
    balas = new ArrayList();                   
  }

  void actu() {
    for (int i = balas.size()-1; i >= 0; i--) {
      balaclass p = (balaclass) balas.get(i);
      p.actu();
      if (p.y < -50) {
        balas.remove(i);
      }
    }
  }
}



