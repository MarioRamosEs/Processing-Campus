class Ball extends StaticActor {
  float r;

  Ball(float x, float y, float r) {
    super.Position.set(x, y);
    super.Direction.set(0, 0);
    super.Speed = 50;
    this.r = r;
  }

  void Update(float dt) {
    super.Update(dt);
  }

  void Draw() {
    fill(0, 255, 0);
    ellipse(super.Position.x, super.Position.y, r*2, r*2);
  }

  void keypressed() {
    if (keyCode==LEFT)  super.Direction.set(-1, 0);
    if (keyCode==RIGHT) super.Direction.set(1, 0);
    if (keyCode==UP)    super.Direction.set(0, -1);
    if (keyCode==DOWN)  super.Direction.set(0, 1);
  }

  void keyreleased() {
    if (keyCode==LEFT)  super.Direction.set(0, 0);
    if (keyCode==RIGHT) super.Direction.set(0, 0);
    if (keyCode==UP)    super.Direction.set(0, 0);
    if (keyCode==DOWN)  super.Direction.set(0, 0);
  }
}