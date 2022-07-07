/*
Tecnología Multimedial 
 Profesor: David Bedoian
 Comisión 3 / TP 3: Juego interactivo libre
 Alumno: Elian Rodriguez 
 Legajo: 73177/5
 Link al video: https://youtu.be/tr8FrM7NNgI
 */

void setup() {
  size(400, 400);
  frameRate(60);
  texto = loadStrings("arreglo.txt");  //Arreglo para pantalla = 2
}

void draw() {
  // Pantallas
  if (pantalla == 1) {
    pantallaInicio();
  } else if (pantalla == 2) {
    pantallaTutorial();
  } else if (pantalla == 3) {
    pantallaJuego();
  } else if (pantalla == 4) {
    pantallaPerdiste();
  } else if (pantalla == 5) {
    pantallaGanaste();
  }
}
