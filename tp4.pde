/*
TP #4: Programando con objetos
 Tema elegido: Autitos tipo "retro"
 Alumno: Angelo Ortiz
 Legajo: 88355/3
 
 https://youtu.be/egZ3QnA72Ag
 */



Fondo fondo;
import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup() {
  size(500, 1000);
  minim = new Minim(this);
  player = minim.loadFile("musica.wav");
}

void draw() {
  player.play();
  fondo=new Fondo(); 
  fondo.dibujar();
  
}
