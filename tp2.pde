
/*
TP #2: Ilusion Optica Interactiva
 Alumno: Angelo Ortiz
 Legajo: 88355/3
 */

//https://youtu.be/bZ4yb3phjPM


float a ; 
boolean linea=true; 

void setup () { 
  size(600, 600);
}

void draw() {

  strokeWeight (15);

  IlusionOptica();
}

void IlusionOptica() {

  float mx = map(mouseX, 0, width, 0, 255 ) ; 
  float my = map (mouseY, 0, height, 0, 255 );

  background(mx, 0.1, my ); 
  stroke ( mx, 0, my ); 
  fill(my, 100, mx );

  translate (width/2, height/2 ); 
  for (int i = 0; i<100; i++ ) { 
    scale(0.95); 
    rotate(radians(a));
    //rotate(random(5,8));
    ellipse(0, 200, 200, 200);
    ellipse(0, 100, 200, 200);
  } 
  a+=0.2 ;

  if (mousePressed) {
    a=0;
  }
}
