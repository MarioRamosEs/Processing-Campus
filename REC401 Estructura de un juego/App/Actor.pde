class Actor {
  Actor() {
  }

  void Update(float dt) {
  }

  void Draw() {
  }

  void keypressed() {
  }

  void keyreleased() {
  }
}


class ActorSpawner extends Actor {
  float coolDown;
  float maxTime;
  Actor T;
  ActorSpawner(Actor T, float maxTime) {
    coolDown = maxTime;
    this.maxTime = maxTime;
    this.T = T;
  }

  void Update(float dt) {
    super.Update(dt);
    coolDown -= dt;
    if (coolDown < 0) {
      coolDown = maxTime;
    }
  }

  void SpawnActor() {
    s.actores.add(T);
  }
}


class StaticActor extends Actor {
  PImage Texture;          //Imagen
  float Speed;             //Velocidad
  PVector Direction;       //Dirección
  PVector Position;        //Posición
  PVector Size;            //Tamaño

  StaticActor() {
    super();
    Direction = new PVector(0, 0);
    Size = new PVector(1, 1);
    Position  = new PVector(width/2, height/2);
  }

  void Update(float dt) {
    super.Update(dt);
    Position.add(Direction.copy().mult(Speed*dt));
  }

  void Draw() {
    super.Draw();
    image(Texture, Position.x, Position.y, Size.x, Size.y);
  }
}


class AnimatedActor extends Actor {  
  PImage Texture[];        //Imagenes
  float Speed;             //Velocidad
  float AnimationSpeed = 1;//Velocidad en que la animación cambia de imagen
  PVector Direction;       //Dirección
  PVector Position;        //Posición
  PVector Size;            //Tamaño
  float frame = 0;

  AnimatedActor(PImage Texture, PVector Size) {
    super();
    AnimationSpeed = 1;
    Direction = new PVector(0, 0);
    this.Size = new PVector(1, 1);
    Position  = new PVector(width/2, height/2);
    this.Texture = hImageSplit(Texture, (int)Size.x, (int)Size.y);
  }

  void Update(float dt) {
    super.Update(dt);
    Position.add(Direction.copy().mult(Speed*dt));
    frameUpdate(dt);
  }

  void Draw() {
    super.Draw();
    image(Texture[(int)frame], Position.x, Position.y, Size.x, Size.y);
  }

  void frameUpdate(float dt) {
    frame += AnimationSpeed*dt;
    if (frame > Texture.length) frame=0;
  }


  //FUNCIONES DE RECORTE DE LA IMAGEN
  PImage[] hImageSplit(PImage source, int width, int height) {
    return ImageSplit(source, 0, 0, (int)(source.width/width)-1, width, height);
  }

  PImage[] ImageSplit(PImage source, int row, int startTile, int endTile, int width, int height) {
    PImage[] resoult = new PImage[endTile-startTile+1];
    for (int x = startTile; x <= endTile; x++) {
      resoult[x-startTile] = createImage(width, height, ARGB);
      resoult[x-startTile].copy(source, x*width, row*height, width, height, 0, 0, width, height);
    }
    return resoult;
  }
}

//TIROS Y MOVIMIENTOS
/*
class ParabolicShot extends StaticActor{
 float Forward = super.Speed;
 ParabolicShot(){
 
 }
 
 void Update(float dt){
 Position.add(Direction.copy().mult(Speed*dt));
 super.Update(dt);
 }
 
 void Draw(){
 super.Draw();
 }
 
 }
 */