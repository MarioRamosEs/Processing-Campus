//Todos los objetos de nuestro juego irán almacenados en actores. 
//Esta clase de por si llama a funciones actualizar y pintar de cada uno.

class Scene {
  ArrayList<Actor> actores = new ArrayList<Actor>();

  Scene() {
    actores.add(new Ball(random(width), random(height), 20));
    actores.add(new HUD());
    actores.add(new Enemigo());
    actores.add(new Ash());
  }

  void Update(float dt) {
    for (int i =0; i< actores.size(); i++) {
      Actor a = actores.get(i);
      a.Update(dt);
    }
  }

  void Draw() {
    background(#002A4C);   
    for (int i =0; i< actores.size(); i++) {
      Actor a = actores.get(i);
      a.Draw();
    }
  }

  void keypressed() {
    if (keyCode==ESC) exit();
    for (int i =0; i< actores.size(); i++) {
      Actor a = actores.get(i);
      a.keypressed();
    }
  }

  void keyreleased() {
    for (int i =0; i< actores.size(); i++) {
      Actor a = actores.get(i);
      a.keyreleased();
    }
  }
}