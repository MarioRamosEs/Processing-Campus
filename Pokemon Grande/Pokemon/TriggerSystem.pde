class TriggerSystem {
  ArrayList triggers;
  boolean activo = false;
  int tipo, valor, nuevaX, nuevaY;

  TriggerSystem() {
    triggers = new ArrayList();
  }

  void actu(float xAsh, float yAsh) {
    for (int i = 0; i < triggers.size(); i++) {
      Trigger a = (Trigger) triggers.get(i);

      if (dist(xAsh/16, yAsh/16, a.x, a.y) < 2) {
        println("Trigger: "+a.tipo+" "+a.valor); 
        activo = true;
        tipo = a.tipo;
        valor = a.valor;
        nuevaX = a.nuevaX;
        nuevaY = a.nuevaY;
      }
    }
  }

  void anyadir(int x, int y, int tipo, int valor, int nuevaX, int nuevaY) {
    triggers.add(new Trigger(x, y, tipo, valor, nuevaX, nuevaY));
  }

  int[] comprobar() {
    int comprobar2 [] = new int [4];
    comprobar2[0] = tipo;
    comprobar2[1] = valor;
    comprobar2[2] = nuevaX;
    comprobar2[3] = nuevaY;
    return comprobar2;
  }
  
  void borrar(){
    for(int i = 0; i < triggers.size(); i++){
     triggers.remove(i); 
    }
  }
}

