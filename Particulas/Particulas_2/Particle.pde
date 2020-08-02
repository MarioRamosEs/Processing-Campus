class Particle {
  float x, y, velx, vely, friccionx, fricciony,vida;
  Particle(float _x, float _y, float _velx, float _vely, float _vida) {
    x = _x;  
    y = _y; 
    velx = _velx;
    vely = _vely;
    vida = _vida;
  }

  void actu() {
    fill(0,0,225);
    ellipse(x, y, 15, 15);

    fill(225);
    ellipse(x, y, 10, 10);
    //andar_v2();
    
    x = x-velx;
    y = y-vely;
    
    vida -= 0.9;
  }

  /*void andar_v2() {
    if (mouseX > x) if (friccionx < vel) friccionx = friccionx + 0.2;
    if (mouseX < x) if (friccionx > -vel) friccionx = friccionx - 0.2;
    x = x + friccionx;

    if (mouseY > y) if (fricciony < vel) fricciony = fricciony + 0.2;
    if (mouseY < y) if (fricciony > -vel) fricciony = fricciony - 0.2;
    y = y + fricciony;
  }*/
  
  void andar_muerto(){
    
  }
 
} 

