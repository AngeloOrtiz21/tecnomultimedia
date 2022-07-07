/*
TP #3: Juego Interactivo libre
 Alumno: Angelo Ortiz
 Legajo: 88355/3
 Aclaracion; no llegue a meter los ultimos temas, sinceramente andaba medio perdido,
 pero entrego esto que es mejor a que no entregar nada, saludos!
 */
 
 
boolean juegoterminado = true;
int puntosganados1;
float posY;
float posX;
int velX;
float velY;

PFont fuente;
PImage fondo;

void setup () {
  size(500, 500);

  posX = width/2;
  posY = height/2;
  velX = 1;
  velY= -5;
  puntosganados1= 0;

  fondo=loadImage("fondoretro.jpg");
  fondo.resize(500, 500);

  rectMode(CENTER);
  fuente=loadFont("fuente.vlw");
  textFont(fuente);
}

//cree un size de 500x500, con una imagen retro de fondo,
void draw () {
  background(0);
  image(fondo, 0, 0, width, height);
  mijuego();
}

//el keypressed que estoy usando es para que pueda apretar cualquier tecla asi reiniciando el juego en su respectiva pantalla
void keyPressed() {
  if (juegoterminado == true) {
    juegoterminado = false;
    puntosganados1=0;
  }
}
