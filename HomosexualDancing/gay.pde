class gay {
  float x, y, z;
  float r, sr = 10;

  gay(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  void actu() {
    fill(225);
    pushMatrix();
    translate(x, y, z);

    //CABOLO
    noStroke();
    pushMatrix();
    translate(65, 35, 0);
    sphere(30);
    popMatrix();

    //CUERPO
    stroke(10);
    pushMatrix();
    translate(65, 95, 0);
    box(30, 120, 15);
    popMatrix();

    //BRAZO DERECHO
    pushMatrix();
    translate(50, 75, 0);
    box(65, 10, 10);
    popMatrix();

    //BRAZO IZQUIERDO
    pushMatrix();
    translate(80, 75, 0);
    r = r + sr;
    if(r > 50) sr = -sr;
    if(r < -50) sr = -sr;
    
    rotate(radians(r));
    box(65, 10, 10);
    float estado = 1;
    if (estado == 1) ;
    popMatrix();

    //PIERNA IZQUIERDA
    pushMatrix();
    translate(50, 175, 0);
    box(10, 60, 10);
    popMatrix();

    //PIERNA DERECHA 
    pushMatrix();
    translate(80, 175, 0);
    box(10, 60, 10);
    popMatrix();


    popMatrix();
  }
}

