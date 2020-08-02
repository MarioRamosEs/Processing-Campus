class Particle {
  float x, y, velx, vely, friccionx, fricciony, vida;
  Particle(float _x, float _y, float _velx, float _vely, float _vida) {
    x = _x;  
    y = _y; 
    velx = _velx+random(-3, 3);
    vely = _vely+random(-3, 3);
    vida = _vida;
  }

  void actu() {
    float q = (vida);

    fill(0, 0, 225, q+100);
    ellipse(x, y, 15, 15);

    //fill(0, 0, 225, 20);
    //ellipse(x, y, 30, 30);

    fill(225, q);
    ellipse(x, y, 10, 10);



    x = x-velx/3;
    y = y-vely/3;

    y = y + 1;

    vida -= 2;
  }


  void andar_muerto() {
  }
} 

