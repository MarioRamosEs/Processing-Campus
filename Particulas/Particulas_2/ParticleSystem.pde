class ParticleSystem {

  ArrayList particulas; 

  ParticleSystem() {
    particulas = new ArrayList();
  }

  void actu() {
    for (int i = 0; i < particulas.size(); i++) {
      Particle a = (Particle) particulas.get(i);
      a.actu();
      if(a.vida < 0) particulas.remove(i);
    }
  }

  void anyadir() {
    float velx = -(pmouseX-mouseX); 
    float vely = -(pmouseY-mouseY);
    particulas.add(new Particle(mouseX,mouseY,velx,vely, 100));
  }
} 

