https://youtu.be/IP9LRJDSjZY

float tam = 5;
float y = height / 2;

void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  noStroke();
  
  // Si el ratón está por encima de la mitad de la ventana, aumentar el tamaño del círculo
  if (mouseY < height / 2) {
    tam = 40;
  } else {
    tam = 10;  // Restaurar el tamaño original del círculo
  }
  
  // Actualizar la posición vertical del círculo
  y = y + 1;
  
  // Reiniciar la posición vertical cuando el círculo sale de la ventana
  if (y > height) {
    y = -tam;
  }
  
  // Dibujar el círculo en la posición actual
  fill(255);
  circle(width / 2, y, tam);
  circle(100, y, tam);
  circle(300, y, tam);
  circle(600, y, tam);

}
