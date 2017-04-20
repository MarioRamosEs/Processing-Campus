PImage cielo;
PImage gameover;
tubo1[]mul;
PImage modelo;
tubo2[]mul2;
PImage modelo2;
boolean dead = false;
boolean fuera = false;
boolean fuera2 = false;

void setup () {
  fill(0, 0, 0);
  size(1000, 550);
  cielo=loadImage("cielo.png");
  mul=new tubo1[3];
  modelo=loadImage("tubo.png");
  imageMode(CENTER);
  mul[0] = new tubo1(new PVector(1000, 550-75), new PVector(100, 150));
  mul[1] = new tubo1(new PVector(1400, 550-125), new PVector(100, 250));
  mul[2] = new tubo1(new PVector(1800, 550-25), new PVector(100, 50));
  mul2=new tubo2[3];
  modelo2=loadImage("tubo2.png");
  mul2[0] = new tubo2(new PVector(1000, 75), new PVector(100, 150));
  mul2[1] = new tubo2(new PVector(1400, 25), new PVector(100, 50));
  mul2[2] = new tubo2(new PVector(1800, 125), new PVector(100, 250));
  modelop=loadImage("pajaro.png");
  p = new pajaro(new PVector(20, 225));
  gameover=loadImage("gameover.jpg");
}

void draw () {
  background(0);
  image(cielo, width/2, height/2, width, height);
  if (dead) {
    image(gameover, 500, 275, 250, 200);
  }
  if (!dead) pajaro(); 
  if (!fuera) {
    mul[0].actualizar();
    mul[1].actualizar();
    mul[2].actualizar();
  }
  if (!fuera2) {
    mul2[0].actualizar();
    mul2[1].actualizar();
    mul2[2].actualizar();
  }
}