class Particle {
  PVector loc;
  PVector vel;
  PVector acc;
  float r;
  float timer;

  Particle(PVector l) {
    acc = new PVector(0, 0.05, 0);
    vel = new PVector(random(-1, 1), random(-2, 0), 0);
    loc = l.get();
    r = 10.0;
    timer = 50.0;
  }

  void run() {
    update();
    render();
  }

  void update() {
    vel.add(acc);
    loc.add(vel);
    timer -= 1.0;
  }

  void render() {
    ellipseMode(CENTER);
    noStroke();
    fill(colors, timer);
    ellipse(loc.x, loc.y, r, r);
  }

  boolean dead() {
    if (timer <= 0.0) return true;
    else return false;
  }
} 

