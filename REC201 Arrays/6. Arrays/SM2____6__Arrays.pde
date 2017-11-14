PImage[] img;
void setup(){
  img=new PImage[3];
  img[0]=loadImage("red.png");
  img[1]=loadImage("green.png");
  img[2]=loadImage("blue.png");
  size(200,200);
  background(0);
}
void draw(){
  if(key=='r'){
    image(img[0],75,75);
  }else{
    if(key=='g'){
      image(img[1],75,75);
    }else{
      if(key=='b'){
        image(img[2],75,75);
      }
    }
  }
}