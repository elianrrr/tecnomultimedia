
/*
Tecnología Multimedial 
 Profesor: David Bedoian
 Comisión 3 / TP 4
 Integrantes: Elian Rodriguez
 Link al video: https://youtu.be/m54VmyRE5RM
 
 Modificación (*):
 - Agregué modificación del color para representar la colisión entre
 los conejos.
 */


//declaraciones 
Conejo c1;
Conejo c2;
PImage Fondo;  


void setup() {
  size(400, 400);
  c1 = new Conejo(); //Constructores
  c2 = new Conejo();
  frameRate(60);
  texto = loadStrings("Conejitos.txt"); //loadString
  Fondo = loadImage("Fondo.jpg");
}

void draw() {
  background(0);
  image(Fondo, 0, 0);

  pTexto();  //mostar texto de funciones globales 
  c1.Movimiento(); //Métodos (funciones)
  c1.dibujar();
  c1.limites();

  c2.Movimiento();
  c2.dibujar();
  c2.limites();
}
