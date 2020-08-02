class mapa {
  casilla[][] map = new casilla[12][32];

  mapa() {
    for (int y = 0; y<map.length; y++) {
      for (int x = 0; x<map[y].length; x++) {
        map[y][x] = new casilla(0);
      }
    }

    cargar();
  }

  void cargar() { //Cargar el mapa de un archivo de texto
    String map[] = loadStrings("mapa.txt");
    String mapab[][] = new String[12][32];
    for (int i = 0; i<12; i++) {
      mapab[i]= split(map[i], ',');
    }

    for (int y =0; y<mapab.length; y++) {
      for (int x =0; x<mapab[y].length; x++) {
        this.map[y][x].cambiarTipo(Integer.parseInt(mapab[y][x]));
      }
    }
  }

  void pintar() {
    for (int y = 1; y<map.length; y++) {
      for (int x = 1; x<map[y].length; x++) {

        if (!map[y][x].mostrado){
          fill(0, 0, 0);
          rect((x*32)-16, (y*32)-16, 32, 32);
        } 
        else {
          switch(map[y][x].tipo) {
          case 0:
            fill(50, 25, 70);
            rect((x*32)-16, (y*32)-16, 32, 32);
            break;
          case 1:
            fill(220, 215, 100);
            rect((x*32)-16, (y*32)-16, 32, 32);
            break;
          case 2: //Bomba
            fill(220, 215, 100);
            rect((x*32)-16, (y*32)-16, 32, 32);
            image(bomba, (x*32)-16, (y*32)-16, 32, 32);
            break;
          case 3:
            fill(220, 215, 100);
            rect((x*32)-16, (y*32)-16, 32, 32);
            image(piqueta, (x*32)-16, (y*32)-16, 32, 32);
            break;
          case 4:
            fill(255, 255, 255);
            rect((x*32)-16, (y*32)-16, 32, 32);
            break;
          case 5:
            fill(100,100,255);
            rect((x*32)-16, (y*32)-16, 32, 32);
            break;
          }
        }
        
      }
    }
  }
}