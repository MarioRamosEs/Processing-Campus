ParticleSystem ps;
float Version = 3;
float a, b, c, t, o;

void setup() {
  size(800, 600, P3D);
  ps = new ParticleSystem();
  //smooth();
  noStroke();
  t = millis();
}

void draw() {
  background(0);
  noStroke();

  if (t+2000 < millis()) {
    a= random(0, 225);
    b= random(0, 225);
    c= random(0, 225);
    t = millis();
  }

  rotateY(radians(o));
  o = o + 0.01;
  
  spotLight(a, b, c, width/2, height/2, 300, 0, 0, -1, PI/2, 2);
  //fill(0,30);
  //rect(0, 0, width, height);
  ps.actu();
  ps.anyadir();
}

