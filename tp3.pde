boolean gameOver = true;
int score1;
float posY;
float posX;
int speedX;
float speedY;
PFont fuente;
PImage fondo;

void setup () {
  size(500, 500);

  posX = width/2;
  posY = height/2;
  speedX = 1;
  speedY= -5;
  score1= 0;

  fondo=loadImage("fondoretro.jpg");
  fondo.resize(500, 500);

  rectMode(CENTER);
  fuente=loadFont("fuente.vlw");
  textFont(fuente);
}

void draw () {
  background(0);
  image(fondo, 0, 0, width, height);


  mijuego();
}




void keyPressed() {
  if (gameOver == true) {
    gameOver = false;
    score1=0;
  }
}
