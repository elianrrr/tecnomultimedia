class Gota {
  float x = random (width);
  float y = random (0, 300);
  float yvelocidad = random (5, 10);


  void movimiento() {
    y = y + yvelocidad;
    if (y>height) {
      y = random (0,300);
      yvelocidad = random (5, 10);
    }
  }
  void llueven() {
    stroke (225,0,0);
    line (x, y, x, y+5);
  }
}
