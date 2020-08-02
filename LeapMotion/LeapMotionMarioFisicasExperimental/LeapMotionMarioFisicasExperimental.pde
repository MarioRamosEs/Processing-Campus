import com.leapmotion.leap.Controller;
import com.leapmotion.leap.Frame;
import com.leapmotion.leap.Hand;
import com.leapmotion.leap.FingerList;
import com.leapmotion.leap.Finger;
import com.leapmotion.leap.Vector;
import com.leapmotion.leap.Screen;
import com.leapmotion.leap.Gesture;
import com.leapmotion.leap.processing.LeapMotion;import pbox2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

PBox2D box2d;
LeapMotion leapMotion;

ArrayList<Boundary> boundaries;
ArrayList<Box> boxes;
ArrayList<Circulo> circles;
float x,y,xx,yy,xg,yg;
boolean dosmanos = false;

void setup() {
  size(640,360);
  smooth();

  box2d = new PBox2D(this);
  box2d.createWorld();
  box2d.setGravity(0, -10);

  boxes = new ArrayList<Box>();
  circles = new ArrayList<Circulo>();
  boundaries = new ArrayList<Boundary>();

  boundaries.add(new Boundary(width/4,height-5,width/2-50,10));
  boundaries.add(new Boundary(3*width/4,height-50,width/2-50,10));
  
  leapMotion = new LeapMotion(this);
}

void draw() {
  background(255);
  box2d.step();
  fill(0,50);
  ellipse(x+width/2,height-y,20,20);
  xg = (xx+width/2)/5;
  yg = (height-yy)/5;
  println(xg+" "+yg);
  box2d.setGravity(xg-50, yg-50);
  
  if(dosmanos) ellipse(xx+width/2,height-yy,20,20);

  if (random(1) < 0.2) {
    Box p = new Box(x+width/2,height-y);
    boxes.add(p);
  }
  
  if (random(1) < 0.2) {
    Circulo p = new Circulo(x+width/2,height-y);
    circles.add(p);
  }

  for (Boundary wall: boundaries) wall.display();
  for (Box b: boxes) b.display();
  for (Circulo c: circles) c.display();

  for (int i = boxes.size()-1; i >= 0; i--) {
    Box b = boxes.get(i);
    if (b.done()) boxes.remove(i);
  }
}

void onFrame(final Controller controller){
    Frame frame = controller.frame();

    Hand hand = frame.hands().get(0);
    FingerList fingers = hand.fingers();
    Finger pointer = fingers.get(0);
    Vector point = pointer.tipPosition();
    x = point.getX(); y = point.getY();
    
    if(frame.hands().count() > 1 && dosmanos == false){
      Hand hand2 = frame.hands().get(1);
      FingerList fingers2 = hand2.fingers();
      Finger pointer2 = fingers2.get(0);
      Vector point2 = pointer2.tipPosition();
      xx = point2.getX(); yy = point2.getY();
      dosmanos = true;
    }else{
      dosmanos = false; 
    }
}




