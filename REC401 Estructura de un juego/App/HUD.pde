class HUD extends Actor {

  HUD() {
  }

  void Update(float dt) {
  }

  void Draw() {   
    fill(255, 100);
    text("FPS: "+(int)frameRate, 30, 30);
  }
}