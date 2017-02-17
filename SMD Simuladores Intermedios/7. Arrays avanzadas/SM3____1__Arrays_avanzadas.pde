int x;
PImage [] tile;
int [][] img={
  {0, 0, 0, 0}, 
  {0, 1, 2, 0}, 
  {0, 2, 1, 0}, 
  {0, 0, 0, 0}
};
void setup() {
  tile=new PImage[3];
  size(128, 128);
  tile[0]=loadImage("tile1.jpg");
  tile[1]=loadImage("tile2.jpg");
  tile[2]=loadImage("tile3.jpg");
}
void draw() {
  for (int y=0; y<4; y++) {
    for (x=0; x<4; x++) {
      image(tile[img[y][x]], x*32, y*32);
      //img[0][1]
    }
  }
}