float theta = 0.0;
float q,v,a,b,c,aa,bb,cc,tr,trr;


void setup() {
  size(900,600);
  smooth();
  q = 0.01;
  v = 45;
}

void draw() {
  luces();
  background(tr);
  onda();
}


void onda() {
  if(random(0,20) < 2) b += 0.0001;
  if(random(0,20) < 2) b -= 0.0001;

  v += random(0,0.5); //velocidad +
  v -= random(0,0.5); //velodidad -

  theta += 0.02;
  noStroke();
  
  float x = theta;

  for (int i = 0; i <= 200; i++) {
    float y = sin(x)*v; //la subida y bajada de bolas
    fill(a+20,b+20,c+20);
    ellipse(i*5,y + 400,10,10);
    fill(a,b,c);
    rect(i*5-5,y + 400-5,20,400);
    x += q; //bote
  }
  

   for (int i = 0; i <= 200; i++) {
    float y = sin(x)*v; //la subida y bajada de bolas
    fill(a+20,b+20,c+20,70);
    ellipse(i*5,y + 390,10,10);
    fill(a,b,c,50);
    rect(i*5-5,y + 390-5,20,400);
    x += q; //bote
  }
}





void luces() {
  if (a == aa) {
    aa = (int)random (0,200);
  } 
  else {
    if (a > aa) a = a - 0.5;
    if (a < aa) a = a + 0.5;
  }

  if (b == bb) {
    bb =  (int)random (0,200);
  } 
  else {
    if (b > bb) b = b - 0.5;
    if (b < bb) b = b + 0.5;
  }

  if (c == cc) {
    cc =  (int)random (0,200);
  } 
  else {
    if (c > cc) c = c - 0.5;
    if (c < cc) c = c + 0.5;
  }

  if (tr == trr) {
    trr = (int)random (0,100);
  } 
  else {
    if (tr > trr) tr = tr - 0.1;
    if (tr < trr) tr = tr + 0.1;
  }
}

