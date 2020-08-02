import com.leapmotion.leap.Controller;
import com.leapmotion.leap.Frame;
import com.leapmotion.leap.Hand;
import com.leapmotion.leap.FingerList;
import com.leapmotion.leap.Finger;
import com.leapmotion.leap.Vector;
import com.leapmotion.leap.Screen;
import com.leapmotion.leap.processing.LeapMotion;

LeapMotion leapMotion;
float x,y;
void setup()
{
    background(0);

    int w = 16*50;
    int h = 9*50;
  
    size(w, h);

    leapMotion = new LeapMotion(this);
}

void draw(){
  ellipse(x,height-y,20,20);
  println(x+"  "+y);
}

void onFrame(final Controller controller){
    Frame frame = controller.frame();
    /*println("Frame id: " + frame.id()
      + ", timestamp: " + frame.timestamp()
      + ", hands: " + frame.hands().count()
      + ", fingers: " + frame.fingers().count()
      + ", tools: " + frame.tools().count());*/
    
    Hand hand = frame.hands().get(0);
    FingerList fingers = hand.fingers();
    Finger pointer = fingers.get(0);
    Vector point = pointer.tipPosition();
    x = point.getX(); y = point.getY();
}



