class Juego {
  int estado=0;

  Gota[] gotas = new Gota [100];
  Pantallas pantallas;

  Juego() {
    pantallas= new Pantallas(loadImage("historia.png"), loadImage("h1.png"), loadImage("h2.png"), loadImage("h3.png"), loadImage("ganaste.png"), loadImage("perdiste.png")); //constructor
    for (int i=0; i < gotas.length; i++) {
      gotas [i] = new Gota ();
    }
  }


  void actualizar() {
    if (estado ==0 ) {
      for (int i=0; i<gotas.length; i++) {
        gotas[i].llueven();
        gotas[i].movimiento();
        pantallas.inicio();
      }
    } else if (estado == 1 ) {
      pantallas.historia();
    } else if (estado == 2 ) {
      pantallas.h1();
    } else if (estado == 3 ) {
      pantallas.h2();
    } else if (estado == 4 ) {
      pantallas.h3();
    } else if (estado == 5) {
      pantallas.vivir();
    } else if (estado == 6) {
      pantallas.morir();
    }
  }

  void tecla() {
    if (estado == 0) {
      if (key == ENTER) {
        estado=1;
      }
    } else if (estado ==1) {
      if (key == ENTER) {
        estado=2;
      }
    } else if (estado ==5) {
      if (key == ENTER) {
        estado=0;
      }
    } else if (estado ==6) {
      if (key == ENTER) {
        estado=0;
      }
    }
  }



  void click() {

    if (estado ==2) {
      if (mousePressed) 
        if (mouseX>=100 && mouseX<=200 && mouseY>=260 && mouseY<=460) {
          estado=3;
        }
      if (mouseX>=400 && mouseX<=500 && mouseY>=260 && mouseY<=460) {
        estado=4;
      }
    } else if (estado ==3) {
      if (mousePressed) 
        if (mouseX>=100 && mouseX<=200 && mouseY>=260 && mouseY<=460) {
          estado=5;
        }
      if (mouseX>=400 && mouseX<=500 && mouseY>=260 && mouseY<=460) {
        estado=6;
      }
    } else if (estado ==4) {
      if (mousePressed) 
        if (mouseX>=100 && mouseX<=200 && mouseY>=260 && mouseY<=460) {
          estado=6;
        }
      if (mouseX>=400 && mouseX<=500 && mouseY>=260 && mouseY<=460) {
        estado=6;
      }
    }
  }
}
