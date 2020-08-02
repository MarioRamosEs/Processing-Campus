ParticleSystem ps;
float Version = 1.1;

void setup(){
  size(800,600);
  ps = new ParticleSystem();
  smooth();
  noStroke();
  
  for(int n = 0; n < 30; n++)ps.anyadir();
}

void draw(){
  //background(0);
  fill(0,40);
  rect(0, 0, width, height);
  ps.actu();
  fill(225);
  text("Version = "+Version, 5, 15);
}
