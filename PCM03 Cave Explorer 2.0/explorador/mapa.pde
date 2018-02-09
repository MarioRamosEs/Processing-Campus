class mapa {
  casilla[][] map = new casilla[12][32];
  player jugador;
  PVector posInicio, posFinal;
  dfs camino = new dfs();

  mapa() {
    for (int y = 0; y<map.length; y++) {
      for (int x = 0; x<map[y].length; x++) {
        map[y][x] = new casilla(0);
        map[y][x].casipos = new PVector(x, y);
      }
    }
  }

  void todo() {
    cargar();
    while (!camino.analizar(map, posInicio, posFinal)) {
      println("Mapa incorrecto. "+posInicio+" - "+posFinal);
      cargar();
    }
    println("Mapa generado correctamente.");
  }

  void setPlayer(player jugador) {
    this.jugador = jugador;
  }

  void cargar() {    //Generar mapa y posición inicio/final
    //CARGA DE MAPA TXT
    /*String map[] = loadStrings("mapa.txt");
     String mapab[][] = new String[12][32];
     for (int i = 0; i<12; i++) {
     mapab[i]= split(map[i], ',');
     }
     
     for (int y =0; y<mapab.length; y++) {
     for (int x =0; x<mapab[y].length; x++) {
     this.map[y][x].cambiarTipo(Integer.parseInt(mapab[y][x]));
     }
     }*/
    for (int y=1; y<map.length-1; y++) {
      for (int x=1; x<map[y].length-1; x++) {
        this.map[y][x].cambiarTipo(randomgen());
      }
    }

    posInicio  = jugador.setstart();
    posFinal   = jugador.setfinal();
  }

  int randomgen() {
    int n;
    double r = random(0, 1);

    if (r<0.5)n = 1;
    else if (r<0.8)n=0;
    else if (r<0.9)n=2;
    else if (r<0.95)n=3;
    else n=4;

    return n;
  }

  void pintar() {
    for (int y = 1; y<map.length; y++) {
      for (int x = 1; x<map[y].length; x++) {

        // if (!map[y][x].mostrado) {
        // fill(0, 0, 0);
        //} else {
        switch(map[y][x].tipo) {
        case 0:
          fill(50, 25, 70);
          break;
        case 1:
          fill(220, 215, 100);
          break;
        case 2:
          fill(0, 0, 0);
          break;
        case 3:
          fill(255, 50, 50);
          break;
        case 4:
          fill(100, 100, 255);
          break;
        case 5:
          fill(255, 255, 255);
          break;
        }
        // }
        rect((x*32)-16, (y*32)-16, 32, 32);
      }
    }
  }
}