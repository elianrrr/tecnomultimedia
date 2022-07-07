//INICIO ES PANTALLA = 1

void pantallaInicio() {
  push();

  if (pantalla == 1) {
    background(0);
    textAlign(CENTER);
    textSize(20);
    text("PLAY\n ¡Presiona click para jugar!", width/2, 300);
  }
  pop();
}
