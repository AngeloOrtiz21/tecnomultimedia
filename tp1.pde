/*
TP #1: Animación de créditos
 Juego elegido: 'Uncharted 2'
 Alumno: Angelo Ortiz
 Legajo: 88355/3
 */



PImage uncharted, NaughtyDog;
PFont fuente;
float posY;
int y;
int contador=0;
int desv;


void setup() {
  size(600, 600);

  uncharted=loadImage("uncharted.jpg");
  uncharted.resize(600, 600);
  //imageMode(CENTER);
  fuente=loadFont("fuente.vlw");
  textFont(fuente);


  //Primera carga de imagen
  y=1000;
}

void draw() {
  background(0);
  //Imagenes
  y-=4;

  posY-=1;
  
  contador++;
  desv++;
  if (contador<350) {
    textAlign(CENTER);
    tint(255,desv);
    image(uncharted, 0, 0);
    
  }

  textSize(20);
  if (mouseX>=width/2) {
    fill(0, 0, 255);
  } else {
    fill(255);
  }
  //Direccion 
  text("Co-President  Evan Well", width/2, posY+1700);
  text("   Game Director  Bruce Straley", width/2, posY+1720);
  text("Creative Director  Amy Henning", width/2, posY+1740);
  text("                    Editor  Taylor Kurosaki", width/2, posY+1760);

  //Protagonistas principales   
  text("Cast", width/2, posY+2400);
  text("Nathan Drake  Nolan North", width/2, posY+2420);
  text("Elena Fisher  Emily Rose", width/2, posY+2440);
  text("   Chloe Frazer  Claudia Black", width/2, posY+2460);
  text("          Victor Sullivan  Richard McGonagle", width/2, posY+2480);
  text("        Harry Flynn  Steve Valentine", width/2, posY+2500);
  text("     Zoran Lazarevic  Graham McTavish", width/2, posY+2520);
  text("          Karl  Schäfer  Rene Auberjobois", width/2, posY+2540);
  text("     Tenzin(voice)  Pema Dhondup", width/2, posY+2560);

  //Protagonistas secundarios
  text("Additional Cast", width/2, posY+2600);
  text("       Gabriel Roman  Simon Templeman", width/2, posY+2620);
  text("Eddy Raja  James Sie", width/2, posY+2640);
  text("           Atoq Navarro  Robin Atkin Downes", width/2, posY+2660);
  text("   Mercenary  Carlos Ferro", width/2, posY+2680);
  text("                       Pirate  Matthew Yang King", width/2, posY+2700);
  text("DanielPinkerton Fred Ttasciore", width/2, posY+2720);
  text("           Rika Raja  Gwendoline Yeo", width/2, posY+2740);

  //Musica
  text("Music", width/2, posY+3200);
  text("Director Of Music   Chuck Doud", width/2, posY+3220);
  text("      Music Manager   Clint Bajakian", width/2, posY+3240);
  text("         Music Manager   Jonathan Mayer", width/2, posY+3260);
  text(" Music Supervisor   Scott Hanau", width/2, posY+3280);
  text(" Mixed And Edited   Marc Senasac\n                             Joel Yarger\n                                    Jonathan Mayer", width/2, posY+3300);


  //Produccion 
  text("Produced By", width/2, posY+4000);
  text("    VP of Production Brian Rausch", width/2, posY+4020);
  text("Executive Producer  Scott Gagain", width/2, posY+4040);
  text("             Production Amy Calcote", width/2, posY+4060);
  text("         Supervisor DJ Hauck", width/2, posY+4080);
  text("      Stage Manager Andre Lopez", width/2, posY+4100);
  text("     Capture Operator Troy Reynolds", width/2, posY+4120);
  text("Production Sound Lee Ascher", width/2, posY+4140);
  text("              Sound Utility Michael Davies", width/2, posY+4160);
  text("          Video Assist Hallie Lane", width/2, posY+4180);
  text(" Production Assistant Tommy Longo", width/2, posY+4200);
  text(" Camara Operators Alex Gaynor\n                                       Annie Wildmoser\n                                Jesse Crusing\n                           Kyle Klutz", width/2, posY+4220);
  
  
  //Pasando el mouse de la mitad de la pantalla a la derecha, aparece
  if(mouseX > width/2 && mouseY < height/2){
    fill (random(0, 255), random( 0, 255 ), random (0, 255 ));
    text("Hola Profe, por favor apruebeme", width/2, height/2); 
  }








  posY--;
}
