// Declaracion de funciones Globales: 


//Pantallas (5) (Inicio, tutorial, jugando, perdiste, ganaste)
int pantalla=1;

//Arreglo  Pantalla 2
String[] texto;
int actual=0;
int cadaCuanto=60*5;

final float pocionVelocidad = 5;
float pocionX = 300;
float pocionY = 0;
float canastaX = 180;

//Para saber si presiono la tecla
boolean flechaIZ = false;
boolean flechaDE = false;

boolean muerto = true; 




//Cambia la posicion del canasto
void posicionCanasto() {
  if (flechaIZ) {
    canastaX -= 10; //izquierda
  }
  if (flechaDE) {
    canastaX += 10; //derecha
  }
}

//Para que la pocion vuelva a caer si la agarras
void vuelveacaerPocion() {
  pocionY = 30;
  pocionX = random(0, 400);
}

//La velocidad en la que cae la pocion
void caerPocion() {
  pocionY += pocionVelocidad;
}


//BOOLEAN------------------------------------
boolean Perdiste() {
  if (pocionY >= 400) { 
    return true;
  }
  return false;
}

boolean pocionenCanasto() {
  if (pocionX >= canastaX && pocionX <= canastaX+70 && pocionY >= 350 && pocionY <= 400) {  //70 es ancho canasta 400 es maximo pocion

    return true;
  }
  return false;
}



//CONTROLES DEL JUEGO------------------------------------

void keyPressed() {
  if (keyCode == LEFT) {
    flechaIZ = true;
  }
  if (keyCode == RIGHT) {
    flechaDE = true;
  }
}

//False para parar el movimiento si no se aprieta
void keyReleased() {
  if (keyCode == LEFT) {
    flechaIZ = false;
  }
  if (keyCode == RIGHT) {
    flechaDE = false;
  }
}

//Para cambiar de pantallas---------------------------
void mouseClicked() {
  if (pantalla==1) {
    cambiaraPantallaTurotial();
  } else if (pantalla==2) {
    cambiaraPantallaJuego();
  } else if (pantalla==4) {
    cambiaraPantallaInicio();
  } else if (pantalla==5) {
    cambiaraPantallaInicio();
  }
}

//Para el arreglo---------------------------
void avanzarActual() {
  actual++;
  if ( actual >= texto.length ) {
    actual=1;
  }
}
