class Particle {
  float x, y, velx, vely, friccionx, fricciony, vida;
  float z = random(-800, 800);
  float e = 10;
  Particle(float _x, float _y, float _velx, float _vely, float _vida) {
    x = _x;  
    y = _y; 
    velx = _velx+random(-3, 3);
    vely = _vely+random(-3, 3);
    vida = _vida;
  }

  void actu() {
    float q = vida;

    noStroke();
    pushMatrix();
    fill(255);
    noStroke();
    translate(x, y, z);
    sphere(e);
    popMatrix();

    x = x-velx/3;
    y = y-vely/3;

    y = y + 1;

    vida -= 2;
  }


  void andar_muerto() {
  }
} 

