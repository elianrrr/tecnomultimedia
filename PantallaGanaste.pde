//GANASTE ES PANTALLA = 5

void pantallaGanaste() {
  push();

  if (pantalla == 5)
    background(0);
  textAlign(CENTER);
  fill (255);
  text("¡LO LOGRAMOS!\n Atrapaste las pociones a tiempo \n Click para volver a jugar", height/2, width/2);

  pop();
}
