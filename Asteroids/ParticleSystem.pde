class ParticleSystem {

  ArrayList particles;  
  PVector origin;      

  ParticleSystem(int num, PVector v) {
    particles = new ArrayList();          
    origin = v.get();                      
    for (int i = 0; i < num; i++) {
      particles.add(new Particle(origin));
    }
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = (Particle) particles.get(i);
      p.run();
      if (p.dead()) {
        particles.remove(i);
      }
    }
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }

  void addParticle(float x, float y) {
    particles.add(new Particle(new PVector(x, y)));
  }

  void addParticle(Particle p) {
    particles.add(p);
  }

  boolean dead() {
    if (particles.isEmpty()) {
      return true;
    } 
    else {
      return false;
    }
  }
}

