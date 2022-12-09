/*
TP #5: Programando con objetos
 Tema elegido: Autitos tipo "retro"
 Alumno: Angelo Ortiz
 Legajo: 88355/3
 https://youtu.be/l0-02OozE3c
 //
 */


import ddf.minim.*;
Juego juego;
Minim minim;
AudioPlayer musica;
AudioPlayer efecto;

void setup() {
  size(500, 900);
  minim = new Minim(this);
  musica = minim.loadFile("Wannabe.wav");
  efecto = minim.loadFile("efecto.wav");
  juego =new Juego();
}

void draw() {  
  juego.dibujar();
  juego.keyPressed();
}
