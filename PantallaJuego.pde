//JUEGO ES PANTALLA = 3
float contador;
int tiempoLimite = 60*10;

void pantallaJuego() {
  push();


  if (pantalla == 3) {
    background(255);
    fill(124, 251, 0);
    ellipse(pocionX, pocionY, 50, 50);
    fill(0);//black
    rect(canastaX, 370, 80, 30);
    posicionCanasto();
    caerPocion();

    if (Perdiste()) {
      pantalla++;
      muerto = true;
    }
    if (pocionenCanasto()) {
      vuelveacaerPocion();
    } 
    fill(0);
    textSize(30);
    text((tiempoLimite-contador)/60, 342, 25);
    contador++;
    if (contador>tiempoLimite) {
      cambiaraPantallaGanaste();
    }
  }
  pop();
}
