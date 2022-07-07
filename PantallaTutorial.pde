// TUTORIAL ES PANTALLA = 2

void pantallaTutorial() { 
  
  //Ciclo for
  push();
  background (0); //Fondo
  stroke(255);  // El color de la linea
  strokeWeight(7); //Ancho de la linea
  for (int i = 150; i < 300; i+=100) {  // iniciador, condicion, incremento
    line(0, i, 400, i);



    //Para el contenido
    if (pantalla == 2) {
      textAlign(CENTER, CENTER);
      textSize(20);
      text( texto[actual], 0, 0, width, height);
      if ( frameCount%cadaCuanto == 0) {  //cada cuanto cambia el texto
        avanzarActual();
      }
    }
  }
  pop();
}
