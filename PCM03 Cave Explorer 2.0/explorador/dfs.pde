class dfs {
  casilla[][] map;
  ArrayList<casilla> nodos = new ArrayList<casilla>();

  dfs() {
  }

  boolean analizar(casilla[][] map, PVector posInicio, PVector posFinal) {
    this.map = map;
    buscar(map[(int)posInicio.y][(int)posInicio.x]);

    for (casilla c : nodos) {
      if (c.tipo==5) return true;
      if (c.casipos == posFinal) return true;
    }
    
    nodos.clear();
    return false;
  }

  void buscar(casilla padre) {
    padre.analizado = true;
    nodos.add(padre);
    PVector pos = padre.casipos;
    //println(pos.x + ", " + pos.y);

    if (map[(int)pos.y-1][(int)pos.x].move && !map[(int)pos.y-1][(int)pos.x].analizado && map[(int)pos.y-1][(int)pos.x].tipo != 2)  buscar(map[(int)pos.y-1][(int)pos.x]);
    if (map[(int)pos.y][(int)pos.x-1].move && !map[(int)pos.y][(int)pos.x-1].analizado && map[(int)pos.y][(int)pos.x-1].tipo != 2)  buscar(map[(int)pos.y][(int)pos.x-1]);
    if (map[(int)pos.y+1][(int)pos.x].move && !map[(int)pos.y+1][(int)pos.x].analizado && map[(int)pos.y+1][(int)pos.x].tipo != 2)  buscar(map[(int)pos.y+1][(int)pos.x]);
    if (map[(int)pos.y][(int)pos.x+1].move && !map[(int)pos.y][(int)pos.x+1].analizado && map[(int)pos.y][(int)pos.x+1].tipo != 2)  buscar(map[(int)pos.y][(int)pos.x+1]);
  }
}