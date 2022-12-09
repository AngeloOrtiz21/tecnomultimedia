class Auto {

  float posx, posy, tamX, tamY;
  int vida;

  PImage img1;

  Auto(PImage img1, float posx, float posy, float tamX, float tamY) {

    this.vida=100;

    this.posy=posy;

    this.posx=posx;

    this.img1=img1;

    this.tamX=tamX;

    this.tamY=tamY;
  }


  void dibujar() {
    noTint();
    image(img1, posx, posy);
  }

  void choque () {
    push();
    tint(#FF0303);
    image(img1, posx, posy);    
    pop();
  }

  //  //barra de vida
  //void dibujarVida() {
  //  fill(0);
  //  rect(0, 0, width, height/20);
  //  fill(255, 0, 0);
  //  rect(0, 0, map(vida, 0, 100, 0, width), height/20);
  //  fill(255, 255, 0);
  //  text("VIDA: " + vida + "%", 100, 30);
  //}

  void mover () {
    if (keyPressed && keyCode == LEFT) 
    {
      posx = posx - 5;
    } else if (keyPressed && keyCode == RIGHT) {
      posx = posx + 5;
    } else if (keyPressed && keyCode == UP) {
      posy = posy - 5;
    } else if (keyCode == DOWN) {
      posy = posy + 5;
    }
  }
}
