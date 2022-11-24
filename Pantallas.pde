class Pantallas {
  PImage ganaste, perdiste, habitacion1, habitacion2, habitacion3, historia;  //campos

//constrcutor
  Pantallas(PImage his, PImage  h1, PImage h2, PImage h3, PImage vivir, PImage morir ) { //declaracion del constructor  (parametros)
    ganaste = vivir;
    perdiste = morir;
    habitacion1 = h1;
    habitacion2 = h2;
    habitacion3 = h3;
    historia =his;
  }

  void inicio() {  //metodos (funciones)
    textAlign(CENTER);
    fill (225,0,0);
    textSize(50);
    text ("BUSQUEDA MORTAL", width/2, 200);
    textSize(30);
    text("ENTER", width/2, 500);
  }


  void historia() { 
    push();
    image (historia, 0, 0, 600, 600);
    textSize(30);
    text("ENTER para jugar", width/2, 500);
    pop();
  }

  void h1() {
    push();
    image (habitacion1, 0, 0, 600, 600);
    stroke(0);
    fill(144, 36, 36);
    rect (100, 260, 100, 200);
    fill(144, 36, 36);
    rect (400, 260, 100, 200);
    pop();
  }

  void h2() {
    push();
    image (habitacion2, 0, 0, 600, 600);
    stroke(0);
    fill(144, 36, 36);
    rect (100, 260, 100, 200);
    fill(144, 36, 36);
    rect (400, 260, 100, 200);
    pop();
  }

  void h3() {
    push();
    image (habitacion3, 0, 0, 600, 600);
    stroke(0);
    fill(144, 36, 36);
    rect (100, 260, 100, 200);
    fill(144, 36, 36);
    rect (400, 260, 100, 200);
    pop();
  }

  void vivir() {
    push();
    image(ganaste, 0, 0, width, height);
    textSize(30);
    text("ENTER para reiniciar", width/2, 500);
    pop();
  }

  void morir() {
    push();
    image(perdiste, 0, 0, width, height);
    textSize(30);
    text("ENTER para reiniciar", width/2, 500);
    pop();
  }
}
