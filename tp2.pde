/*
Tecnología Multimedial 
 Profesor: David Bedoian
 Comisión 3 / TP 2: Ilusión óptica Interactiva
 Alumno: Elian Rodriguez 
 Legajo: 73177/5
 Link al video: https://youtu.be/Sz1kUxXnE9A
*/
int cant = 7; //Cantidad
int tam;

void setup () {
  size (400, 400);
  tam = width/cant;  //tamaño = ancho / cantidad
  background (0);
}

void draw() {
  //Lineas horizontales
  for (int i = 1; i < cant; i++) {  // iniciador, condicion, incremento
    stroke(150);  // El color de la linea
    strokeWeight(7); //Ancho de la linea
    line(0, i*tam, 400, i*tam);
  }//Lineas verticales
  for (int i = 1; i< cant; i++) {
    stroke(155);
    strokeWeight(7);
    line(i*tam, 0, i*tam, 400);
  } 
  
  //Puntos con X e Y
  for (int y = 1; y < cant; y ++) {
    for (int x = 1; x < cant; x ++) {
      stroke(255);
      ellipse(x*tam, y*tam, 10, 10);
    }
  }
  if (mousePressed == true) {
    fill(random(0, 200));
  } else {
    fill(255);
  }
}
