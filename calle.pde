class Calle {
  float y, x;
  Calle(float x_, float y_) {
    //lineas del medio 
    x = x_;
    y = y_;

    noStroke();
  }
  void dibujar() {
    fill(#FCF503);
    rect(x+150, y-850, 15, 50);
    rect(x+350, y-850, 15, 50);

    rect(x+150, y-750, 15, 50);
    rect(x+350, y-750, 15, 50);

    rect(x+150, y-600, 15, 50);
    rect(x+350, y-600, 15, 50);

    rect(x+150, y-450, 15, 50);
    rect(x+350, y-450, 15, 50);

    rect(x+150, y-300, 15, 50);
    rect(x+350, y-300, 15, 50);

    rect(x+150, y-150, 15, 50);
    rect(x+350, y-150, 15, 50);

    rect(x+150, y, 15, 50);
    rect(x+350, y, 15, 50);

    rect(x+150, y+150, 15, 50);
    rect(x+350, y+150, 15, 50);

    rect(x+150, y+300, 15, 50);
    rect(x+350, y+300, 15, 50);

    rect(x+150, y+450, 15, 50);
    rect(x+350, y+450, 15, 50);

    rect(x+150, y+600, 15, 50);
    rect(x+350, y+600, 15, 50);

    rect(x+150, y+750, 15, 50);
    rect(x+350, y+750, 15, 50);

    rect(x+150, y+900, 15, 50);
    rect(x+350, y+900, 15, 50);

    //lineas laterales amarillas
    fill(255);
    rect(30, 0, 10, 1000);
    rect(460, 0, 10, 1000);
  }

  void mover() {
    if (y < 950) {
      y = y+5;
    }
    if (y >=950) {
      y=0;
    }
  }
}
