class Conejo {  //El nombre de la clase
  //Declaracion
  float x;
  float y;
  float diam;
  float radio, m;
  float conejoX;
  float conejoY;


  //Campos y metodos (variables y funciones)
  Conejo() {
    x = width/2;
    y = height/2;
  }

// Métodos (Funciones)
    void Movimiento() {
      y = y + random (-5, 5);
      x = x +random (-5, 5);
      diam = 40;
    }

    void dibujar() {   //Variables
      push();
      translate (x, y);
      stroke(0);
      fill (0, 0, 225);
      ellipse( conejoX, conejoY, diam, diam);
      pop();
    }


    void limites() {  //Rebotar contra los bordes 

      //  if (x < diam/2) { // no funciona
      //    x = 400;
      if (x >(width - radio)) {
        x = width - radio;
        x = -x;
      }  
      if (x < radio) {
        x = width + radio;
        x = +x;
      }
      if (y >(height - radio)) {
        y = height - radio;
        y = -y;
      } 
      if (y < radio) {
        y = height + radio;
        y = +y;
      }
    }
  }
