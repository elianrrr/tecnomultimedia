//PERDISTE ES PANTALLA = 4

void pantallaPerdiste() {
  push();

  pantallaInicio();
  if (pantalla == 4)
    background(0);
  textAlign(CENTER);
  fill(255);
  text("GAME OVER\n No pudiste agarrar todas las pociones\n Click para volver a internar!", height/2, width/2);

  pop();
}
