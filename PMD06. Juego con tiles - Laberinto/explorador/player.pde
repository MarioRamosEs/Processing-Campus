class player {
  int px=112;
  int py=48;
  int vidas = 5;
  int x, y;
  boolean win =false;
  int picomc = 0;

  int light = 1;

  mapa map;
  player(mapa map) {
    this.map = map;
  }

  public void actualizar() {
    fill(255, 0, 0);
    x = px/32 +1; 
    y = py/32+1;
    ellipse(px, py, 32, 32);
    
    textSize(32);
    image(life, 10, 10, 32, 32);
    text("x"+vidas, 44, 42);
    image(mine, 10, 44, 32, 32);
    text("x"+picomc, 44, 76);
    arround();
    
  }
  void arround() {
    x = px/32 +1; 
    y = py/32+1;
    
    //Mostrar todas las casillas alrededor
    for(int i= -(light); i<light+1; i++){
      for(int j = -(light); j<light+1; j++){
        if(y+i > 0 && y+i< ((height/32)+1) &&x+j > 0 && x+j< ((width/32)+1)){ //Mirar que no se salga del mapa
          map.map[y+i][x+j].mostrado = true;
        }
      }
    }
  }

  void pisar() {
    x = px/32 +1; 
    y = py/32+1;
    switch(map.map[y][x].tipo) {
      case 2:
        vidas--;
        println("Vidas = "+vidas);
        map.map[y][x].cambiarTipo(1);  
        break;
      case 3: 
        picomc++;
        println("Piquetas = "+picomc);
        map.map[y][x].cambiarTipo(1); 
        break;
      case 4:
        println("¡Has ganado!");
        win = true;
        break;
      case 5:
        light++;
        println("Luz = "+vidas);
        map.map[y][x].cambiarTipo(1);  
        break;
    }
  }

//Funciones de movimiento
  void movArriba() {
    if (map.map[y-1][x].move) {
      py=py-32;
      pisar();
    }
  }
  void movAbajo() {
    if (map.map[y+1][x].move) {
      py=py+32;
      pisar();
    }
  }
  void movIzquierda() {
    if (map.map[y][x-1].move) {
      px=px-32;
      pisar();
    }
  }
  void movDerecha() {
    if (map.map[y][x+1].move) {
      px=px+32;
      pisar();
    }
  }
}