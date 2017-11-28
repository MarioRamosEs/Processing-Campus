hormiga hormiga1, hormiga2, hormiga3, hormigareina;
ArrayList <hormiga> hormigas = new ArrayList<hormiga>();
int contador = 0;

PImage background;
PImage[] imgHormigas = new PImage[3];

void setup() {
  size(668, 400);
  background = loadImage("bg.png");
  imgHormigas[0] = loadImage("t1.png");
  imgHormigas[1] = loadImage("t2.png");
  imgHormigas[2] = loadImage("t3.png");

  for (int i=0; i<4; i++) {
    hormigas.add(new hormiga ((int)random(1,3)));
  }
}

void draw() {
  background(255);
  image(background, 0, 0, width, height);

  for (int i=0; i<hormigas.size(); i++) {
    hormigas.get(i).actualizar();
  }

  for (int i=0; i<hormigas.size(); i++) {
    if (hormigas.get(i).viu == false) {
      hormigas.remove(i);
      hormigas.add(new hormiga ((int)random(1,3)));
      contador += hormigas.get(i).getPuntos();
      text(contador, 10, 10);
    }
  }
}

void mouseReleased() {
  for (int i=0; i<hormigas.size(); i++) {
    hormigas.get(i).click(mouseX, mouseY);
  }
}