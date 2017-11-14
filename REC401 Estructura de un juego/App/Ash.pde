class Ash extends AnimatedActor {

  Ash() {
    super(loadImage("Ash.png"), new PVector(15, 20));
    super.Size.set(15, 20);
    super.AnimationSpeed = 3;
    super.Direction.set(-0.5, -0.5);
    super.Speed = 20;
  }

  void Update(float dt) {
    super.Update(dt);
  }

  void Draw() {
    super.Draw();
  }

  void keypressed() {
    if (key=='a') super.Direction.set(-1, 0);
    if (key=='d') super.Direction.set(1, 0);
    if (key=='w') super.Direction.set(0, -1);
    if (key=='s') super.Direction.set(0, 1);
  }

  void keyreleased() {
    if (key=='a') super.Direction.set(0, 0);
    if (key=='d') super.Direction.set(0, 0);
    if (key=='w') super.Direction.set(0, 0);
    if (key=='s') super.Direction.set(0, 0);
  }
}