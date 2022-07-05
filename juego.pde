void mijuego() {
  if (gameOver == true) {
    
    textAlign(CENTER);
    textSize(25);
    //fill();
    text ("PRESS A KEY", width/2, height/2+20);
    textSize(25);
    text ("GAME OVER", width/2, height/2);
  } else {
    fill(#C626B1);
    rect( mouseX, height*0.9, 60, 10);

    fill(#C626B1);
    ellipse(posX, posY, 20, 20);

    if (posY< 0) {
      speedY= - speedY;
      posY= 0;
    }

    if (posX> width) {
      speedX= - speedX;
      posX= width;
    }

    if (posX< 0) {
      speedX= - speedX;
      posX= 0;
    }

    if (posY >height)
    {
      posX = width/2;
      posY = height/2;
      gameOver = true;
      speedX = speedX ;
      speedY = speedY ;
    }

    if (posX > mouseX-30 && posX < mouseX + 30 && posY > 0.9*height-5 && posY < 0.9*height+5) {
      speedX = speedX;
      speedY = -1*speedY;
      score1= score1+1;
    } else {

      text(score1, 250, 50);
    }

    println(posY);
    posX= posX + speedX;
    posY= posY + speedY;
  }
}
