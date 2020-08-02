class ParticleSystem {

  ArrayList particulas; 

  ParticleSystem() {
    particulas = new ArrayList();
  }

  void actu() {
    for (int i = 0; i < particulas.size(); i++) {
      Particle a = (Particle) particulas.get(i);
      a.actu();
    }
  }

  void anyadir() {
    color colors = color(random(225), random(225), random(225));
    particulas.add(new Particle(random(800), random(600), random(1, 5), colors));
  }
} 

