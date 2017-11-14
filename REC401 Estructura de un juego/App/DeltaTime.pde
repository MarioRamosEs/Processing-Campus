int FPS;
// Variables para el control de refresco
float deltaTime;
float maxTimeDiff;
int maxSkippedFrames;
int initialTime;
int skippedFrames;
float nextTime;


void deltainit() {
  FPS =  60;
  deltaTime = 1.0 / FPS;
  maxTimeDiff = 5;
  maxSkippedFrames =5;
  initialTime = millis();
  skippedFrames = 1;

  // -------------- Init -------------------------
  frameRate(FPS); 
  s = new Scene();
  nextTime = (millis()- initialTime) / 1000;
  rectMode(CENTER);
}


void deltaactu() {
  float currTime = (millis()-initialTime)/1000;
  if ((currTime - nextTime) >  maxTimeDiff) nextTime = currTime;
  if (currTime >= nextTime) {
    nextTime += deltaTime;
    // ----------------  UPDATE ----------------
    s.Update((float)deltaTime);
    if ((currTime < nextTime) || (skippedFrames > maxSkippedFrames)) {
      // -----------------  DRAW -----------------
      s.Draw();
      skippedFrames = 1;
    } else {
      skippedFrames++;
    }
  } else {
    int sleepTime = (int) (1000*(nextTime - currTime));
    if (sleepTime > 0) {
      delay(sleepTime);
    }
  }
}