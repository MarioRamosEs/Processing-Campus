gayFactory gf;
float Version = 1;


void setup(){
  size(800,600,P3D);
  gf = new gayFactory();
  
  for(int n = 0; n < 10; n++) gf.anyadir(random(50,750),random(50,550),10);
  
  translate(0, 0, 200);
}

void draw(){
  background(0);
  gf.actu();
}
