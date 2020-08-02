//import processing.opengl.*;

PImage img[];
int[][] values;
float angle,angle2,angle3,trt,lcs,espera;

int numimg = 4,xd;

void setup() {
  size(1224, 768, P3D);
  noFill();
  
  img = new PImage[numimg];
  
  img[0] = loadImage("a0.jpg");
  img[1] = loadImage("a1.PNG");
  img[2] = loadImage("a4.PNG");
  img[3] = loadImage("a3.PNG");
  //img[] = loadImage("a4.PNG");
  //img[5] = loadImage("a5.png");
  // añadir mas !!!
  
  values = new int[width][height];
  // Extract the brightness of each pixel in the image
  // and store in the "values" array
  img[xd].loadPixels();
  for (int i = 0; i < img[xd].height; i++) {
    for (int j = 0; j < img[xd].width; j++) {
      color pixel = img[xd].pixels[i*img[xd].width + j];
      values[j][i] = int(brightness(pixel));
    }
  }
  
}

void draw() {
  
  if (millis() - espera > 10000) {
    xd = xd + 1;
    espera = millis();
    if (xd > numimg-1) xd = 0;

    img[xd].loadPixels();
    for (int i = 0; i < img[xd].height; i++) {
      for (int j = 0; j < img[xd].width; j++) {
        color pixel = img[xd].pixels[i*img[xd].width + j];
        values[j][i] = int(brightness(pixel));
      }
    }
  }
  
  //background(0);                     // Set black background
  translate(width/2, height/2, 0);   // Move to the center
  scale(1);                        // Scale to 400%
  
  // Update the angle
  angle += 0.005;
  rotateY(angle);  
  
  background(0);
  
  angle2 = (float)mouseY/5000;
  angle3 = (float)mouseX/4000;
  rotateX(angle2);
  rotateZ(angle3);  
  
  // Display the image mass
  for (int i = 0; i < img[xd].height; i += 2) {
    for (int j = 0; j < img[xd].width; j += 2) {
      stroke(values[j][i], 153);
      float x1 = j-img[xd].width/2;
      float y1 = i-img[xd].height/2;
      float z1 = -values[j][i]/2;
      float x2 = j-img[xd].width/2;
      float y2 = i-img[xd].height/2;
      float z2 = -values[j][i]/2-4;
      fill (220,0,0);
      line(x1, y1, z1, x2, y2, z2);
    }
  }
}

