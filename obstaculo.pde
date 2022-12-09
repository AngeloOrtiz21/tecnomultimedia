class Obstaculo {
  float posX, posY, tamX, tamY;
  PImage  img;

  Obstaculo(PImage img, float posX, float posY, float tamX, float tamY) {
    this.posX = posX;
    this.posY = posY;
    this.tamX = tamX;
    this.tamY = tamY;
    this.img = img;
  }
  //se dibujan los obstaculos
  void dibujar() {
    tint(random(0, 255), random( 0, 255 ), random (0, 255 ));
    image(img, posX, posY);
  }

  //aumento de velocidad y posicion de obstaculos
  void mover() {
    if (posY < 1070) {
      posY = posY+15;
    }
    if (posY >= 1050) {
      posY = -50;
      posX = random(50, 250);
    }
  }
  //colision
   boolean colision(float posX_, float posY_, float tamX_, float tamY_) {
    if (posY-tamY/2 < posY_+tamY_/2 &&
    posY+tamY/2 > posY_-tamY_/2 &&
    posX-tamX/2 < posX_+tamX_/2 &&
    posX+tamX/2 > posX_-tamX_/2) {

      return true;
    } else {
      return false;
    }
  }
}
