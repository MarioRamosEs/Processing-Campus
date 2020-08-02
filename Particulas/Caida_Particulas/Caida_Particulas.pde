ParticleSystem ps;
float Version = 1.2;

void setup() {
  size(800, 600);
  ps = new ParticleSystem();
  smooth();
  noStroke();
  frameRate(50);

  for (int n = 0; n < 50; n++)ps.anyadir(); //Añade una donde quiera
}

void draw() {
  fill(0, 40);
  rect(0, 0, width, height);
  ps.actu();
  fill(225);
  text("Version = "+Version, 5, 15);
}

