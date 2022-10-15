class Auto {
  float y, x;
  Auto(float x_, float y_, PImage img1_) {
    y=y_;
    x=x_;
    img1=img1_;
  }
  void dibujar() {
    image(img1, x, y);
  }

  void mover () {
    if (keyPressed && keyCode == LEFT) {
      posx = posx - 5;
    }
    if (keyPressed && keyCode == RIGHT) {
      posx = posx + 5;
    }
    if (keyPressed && keyCode == UP) {
      posy = posy - 5;
    }
    if (keyPressed && keyCode == DOWN) {
      posy = posy + 5;
    }
  }
}
