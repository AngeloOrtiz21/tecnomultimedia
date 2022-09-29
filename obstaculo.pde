class Obstaculo{
  float y, x;
  PImage  img;
  Obstaculo(PImage img_, float x_, float y_) {
    x = x_;
    y = y_;
    img = img_;
  }
  void dibujar() {
    image(img2, x, y);
    
  }
  
  void dibujar2(){
    image(img3, Ax, posY);
  
  }
  void mover() {
    if (y1 < 1070) {
      y1 = y1+20;
    }
    if (y1 >= 1050) {
      y1 = 0;
      x1 = random(50,450);
    }
  }
  
  void mover2(){
        if (posY < 1050) {
      posY = posY+15;
    }
    if (posY >= 1050) {
      posY = 0;
      Ax = random(150,250);
    }
  
  }
}
