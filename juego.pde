
//cree mi propia funcion para separar y tener mas ordenado el codigo en si
void mijuego() {
  if (juegoterminado == true) {
    
    textAlign(CENTER);
    textSize(25);
    fill(#FFFFFF);
    text ("PRESIONAR CUALQUIER LETRA", width/2, height/2+20);
    textSize(25);
    text ("Juego Terminado", width/2, height/2);
  } else {
    fill(#C626B1);
    rect( mouseX, height*0.9, 60, 10);

    fill(#C626B1);
    ellipse(posX, posY, 20, 20);

    if (posY< 0) {
      velY=0.5 - velY;
      posY= 0;
    }

    if (posX> width) {
      velX= - velX;
      posX= width;
    }

    if (posX< 0) {
      velX= - velX;
      posX= 0;
    }

    if (posY >height)
    {
      posX = width/2;
      posY = height/2;
      juegoterminado = true;
      posY=0;
      velY= - 3;
    }

    if (posX > mouseX-30 && posX < mouseX + 30 && posY > 0.9*height-5 && posY < 0.9*height+5) {
      velY = -1*velY;
      puntosganados1= puntosganados1+2;
    } else {

      text(puntosganados1, 250, 50);
    }


    //
    println(posY);
    posX= posX + velX;
    posY= posY + velY;
  }
}
