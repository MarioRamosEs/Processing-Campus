class casilla {
  int tipo;
  boolean move = false;
  boolean mostrado = false;
  boolean analizado = false;
  PVector casipos;
  casilla(int tipo) {
    this.tipo = tipo;
  }

  public void cambiarTipo(int tipo) {
    this.tipo = tipo;
    if (tipo == 0) move = false; 
    if (tipo != 0) move = true;
    analizado = false; //FALTABA ESTO!!!!!!!!!
  }
}