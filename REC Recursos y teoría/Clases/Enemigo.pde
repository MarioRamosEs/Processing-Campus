class Enemigo {
  //Declaramos la clase 'Enemigo' con tres propiedades
  int x, y, w, h;

  Enemigo(int ex, int ey, int ew, int eh) {
    //Creamos un constructor con el mismo nombre de la clase y le pasamos sus parámetros
    x = ex;
    y = ey;
    w = ew;
    h = eh;
  }

  void actualizar(int n) {
    //Creamos un método 'actualizar' para mover y pintar los enemigos.
    rect(x, y, w, h);
    x = x+n;
  }
}