class Puntos {
  //se dibujan los puntos en la pantalla de juego
  float x, y;
  int puntos;
  Puntos (float x, float y, int puntos) {
    this.x = x; 
    this.y = y;
    this.puntos= puntos;
  }
  void dibujar () {
    push();
    textSize(20);
    textAlign(CENTER);
    text("puntos: "+puntos, x, y);
    pop();
    
  }
  



}
