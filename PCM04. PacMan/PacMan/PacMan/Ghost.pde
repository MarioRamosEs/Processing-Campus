/* 0 PARADO
1 ARRIBA
2 DERECHA
3 ABAJO
4 IZQUIERDA */

class Ghost extends StaticActor{
	int direccion, temp, old_direccion;
	PVector posTile;
	boolean caminoPensado = false;
	Ghost(PImage img, PVector pos, int direcc){
		super();
		Texture = img;
		Position = pos;
		Size = new PVector(tileSize, tileSize);
		Speed = 1;
		direccion = direcc;
		old_direccion = direccionInversa(direcc);
	}

	void update(){
		if(dist(Position.x, Position.y, posPlayer.x, posPlayer.y) < areaDeteccion){
			estado = 2;
		}
		posTile = tilePos(Position);
		temp = mapa[(int)posTile.y][(int)posTile.x];
		if(temp == 3 || temp == 4){
			if(!caminoPensado){
				old_direccion = direccion;
				direccion = direccionDisponible(posTile, old_direccion);
				caminoPensado = true;
			}
		}else{
			caminoPensado = false;
		}
		tomarDireccion();
		super.update();
	}

	void tomarDireccion(){
		switch (direccion) {
	      case 1:
	          Direction = new PVector(0, -1);
	        break;  
	        case 2:
	          Direction = new PVector(1, 0);
	        break;  
	        case 3:
	          Direction = new PVector(0, 1);
	        break;  
	        case 4:
	          Direction = new PVector(-1, 0);
	        break;  
	    }
	}
}

class StaticActor{
  PImage Texture;          //Imagen
  float Speed;             //Velocidad
  PVector Direction;       //Dirección
  PVector Position;        //Posición
  PVector Size;            //Tamaño

  StaticActor() {
    Direction = new PVector(0, 0);
    Size = new PVector(1, 1);
    Position  = new PVector(width/2, height/2);
  }

  void update() {
    Position.add(Direction.copy().mult(Speed));
    image(Texture, Position.x, Position.y, Size.x, Size.y);
  }
}