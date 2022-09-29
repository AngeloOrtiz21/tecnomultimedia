int posy = 800;
int posx = 250;

float x1 = random(50, 450), x2 = 0;
float y1 = 0, y2 = 0;

//
float Ax= random(100,450);
float posY= 0;

PImage img1, img2, img3;
Auto auto;
Obstaculo obstaculo, obstaculo2, obstaculo3;
Calle calle;

class Fondo {

  Fondo() {
    background(#71716E);
    img1=loadImage("img1.png");
    img2=loadImage("img2.png");
    img2.resize(100, 100);
    img3=loadImage("img3.png");
    img3.resize(100, 100);
    imageMode(CENTER);
    //Ax= random(100,300);
  }  

  void dibujar() {
    auto = new Auto(posx, posy, img1);
    obstaculo = new Obstaculo(img2, x1, y1);
    obstaculo2 = new Obstaculo(img3, Ax, posY);
    calle = new Calle (x2, y2);

    calle.dibujar();
    calle.mover();
    obstaculo.dibujar();
    obstaculo2.dibujar2();
    obstaculo.mover();
    obstaculo2.mover2();
    auto.dibujar();
    auto.mover();
    
    
  }
}
