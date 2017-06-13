int vel = 2;
int direccion = 3;
int temp;
/* 0 PARADO
1 ARRIBA
2 DERECHA
3 ABAJO
4 IZQUIERDA */
PVector posPlayer = new PVector(width/2, height/2);
PVector velPlayer = new PVector(0, vel);
PVector tilePlayer = new PVector(0, 0);

void actualizarPlayer(){
	//tilePlayer = new PVector(posPlayer.x/tileSize, posPlayer.y/tileSize);
	//println("tilePlayer: "+mapa[(int)tilePlayer.y][(int)tilePlayer.x]);
	tilePlayer = tilePos(posPlayer); 					//Numero de tile sobre el cual está el jugador
	temp = mapa[(int)tilePlayer.y][(int)tilePlayer.x];	//Tipo de tile sobre el cual está el jugador
	//println("temp: "+temp);
	if(temp == 3 || temp == 4){
		switch (direccion) {
			case 1:
				tilePlayer = tilePos(new PVector(posPlayer.x, posPlayer.y-tileSize/2));
				if(mapa[(int)tilePlayer.y][(int)tilePlayer.x] == 0) velPlayer = new PVector(0, 0);
				else velPlayer = new PVector(0, -vel);
			break;	
			case 2:
				tilePlayer = tilePos(new PVector(posPlayer.x+tileSize/2, posPlayer.y));
				if(mapa[(int)tilePlayer.y][(int)tilePlayer.x] == 0) velPlayer = new PVector(0, 0);
				else velPlayer = new PVector(vel, 0);
			break;	
			case 3:
				tilePlayer = tilePos(new PVector(posPlayer.x, posPlayer.y+tileSize/2));
				if(mapa[(int)tilePlayer.y][(int)tilePlayer.x] == 0) velPlayer = new PVector(0, 0);
				else velPlayer = new PVector(0, vel);
			break;	
			case 4:
				tilePlayer = tilePos(new PVector(posPlayer.x-tileSize/2, posPlayer.y));
				if(mapa[(int)tilePlayer.y][(int)tilePlayer.x] == 0) velPlayer = new PVector(0, 0);
				else velPlayer = new PVector(-vel, 0);
			break;	
		}
	}
	image(imgPlayer, posPlayer.x, posPlayer.y, tileSize, tileSize);
	posPlayer.add(velPlayer);
}