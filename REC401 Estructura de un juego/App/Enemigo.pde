class Enemigo extends StaticActor {

  Enemigo() {
    super();
    super.Texture = loadImage("LogoPEQ.png");
    super.Size.set(100, 100);
    super.Direction.set(5, 5);
    super.Speed = 10;
  }

  void Update(float dt) {
    if (super.Position.x < 0 || super.Position.x>width) super.Direction.set(super.Direction.x*-1, super.Direction.y);
    if (super.Position.y < 0 || super.Position.y>height) super.Direction.set(super.Direction.x, super.Direction.y*-1);
    super.Update(dt);
  }

  void Draw() {
    super.Draw();
  }
}