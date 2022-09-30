//loadString
String[] texto;
int actual=0;
int cadaCuanto=60*10;

void pTexto() {
  fill(0);
  textAlign(CENTER, 30);
  textSize(20);
  text( texto[actual], 0, 320, width, height);
  if ( frameCount%cadaCuanto == 0) {  //cada cuanto cambia el texto
    avanzarActual();
  }
}
void avanzarActual() {  //para avanzar texto
  actual++;
  if ( actual >= texto.length ) {
    actual=1;
  }
}
