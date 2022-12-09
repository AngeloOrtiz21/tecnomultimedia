class Juego {
  Obstaculo obstaculo, obstaculo2;
  Calle calle;
  Fondo fondo; 
  Auto auto;
  Puntos puntos;

  //pantallas 
  int estado=0;

  int punto=300;

  //variable auto
  float Ay= 800;
  float Ax = 250;

  //variables obstaculos
  float Ox1 = random(50, 250);
  float Oy1 = -50;
  float Ox2 = random(300, 450);
  float Oy2 = -150;

  float tamX = 50, tamY = 100;

  //calles
  int Cx, Cy;

  PImage img1, img2, img3, imgblanco, 
    fondoP, fondoretro, perdiste, ganaste;
  PFont fuente;
  Juego() {
    //carga de imagenes y fuentes
    fondo = new Fondo();
    img1=loadImage("img1.png");
    imgblanco=loadImage("imgblanco.png");
    imgblanco.resize(100, 100);
    fondoP=loadImage("fondoP.jpg");
    fondoP.resize(500, 900);
    fondoretro=loadImage("fondoretro.jpg");
    fondoretro.resize(500, 900);
    perdiste=loadImage("perdiste.jpg");
    perdiste.resize(500, 900);
    ganaste=loadImage("ganaste.jpg");
    ganaste.resize(500, 900);
    fuente=createFont("fuente.ttf", 10);

    //inicializando los objetos
    auto = new Auto( img1, Ax, Ay, tamX, tamY);
    obstaculo = new Obstaculo(imgblanco, Ox1, Oy1, tamX, tamY);
    obstaculo2 = new Obstaculo(imgblanco, Ox2-100, Oy2-500, tamX, tamY);
    calle = new Calle (Cx, Cy);
  }

  void dibujar() {
    if (estado==0) {

      //pantalla inicio
      image(fondoP, 0, 0);
      textFont(fuente);
      textAlign(CENTER);
      textSize(30);
      text("Juego Autito Retro", 250, 110);
      text("Pulsa E para comenzar", 250, 650);
      text("Intrucciones:", 250, 700);
      text("+1200Puntos=Ganaste", 250, 750);
      text("-200Puntos=Perdiste", 250, 780);
    } //pantalla de desarrollo
    else if (estado==1) {
      musica.play();
      fondo.dibujar();
      calle.dibujar();
      calle.mover();
      obstaculo.dibujar();
      obstaculo.mover();
      obstaculo2.dibujar();
      obstaculo2.mover();
      auto.dibujar();
      auto.mover();
      puntos = new Puntos (250, 70, punto);
      puntos.dibujar();
      //auto.dibujarVida();

      //resta de puntos de colision
      if (obstaculo.colision(auto.posx, auto.posy, auto.tamX, auto.tamY)) {
        punto=punto-10;
        auto.choque();
        efecto.play();
        efecto.rewind();       
        println(puntos);
      }
      if (obstaculo2.colision(auto.posx, auto.posy, auto.tamX, auto.tamY)) {
        punto=punto-10;
        auto.choque();
        efecto.play();
        efecto.rewind();
        println(puntos);
      }
      //suma de puntos de colisiones 
      if (!obstaculo.colision(auto.posx, auto.posy, auto.tamX, auto.tamY)) {
        punto++;
        println(puntos);
      }
      if (!obstaculo2.colision(auto.posx, auto.posy, auto.tamX, auto.tamY)) {
        punto++;
        println(puntos);
      }
      //perder
      if (punto<=-200) {
        estado=2;
      }
      //ganar
      if (punto>=1200) {
        estado=3;
      }
    } else if (estado==2) {
      image(perdiste, 0, 0);
      textAlign(CENTER);
      text("Perdiste!!", 250, 130);
      text("Vuelve a intentarlo", 250, 250);
      text("Pulsa R para reiniciar", 250, 300);
    } else if (estado==3) {
      image(ganaste, 0, 0);
      textAlign(CENTER);
      text("Ganaste!!", 250, 260);
      text("Creditos pulsando i", 250, 620);
    } else if (estado==4) {
      image(fondoretro, 0, 0);
      textAlign(CENTER);
      text("Creditos", 250, 200);
      textSize(25);
      text("Tecnologia Multimedial 1", 250, 280);
      text("Programador:Angelo Ortiz", 250, 330);
      text("Comision 2", 250, 380);
      text("Profesor Matias J. Lorda", 250, 430);
      text("Y Tobias Albirosa", 250, 480);
      text("Volver al inicio pulsando g", 250, 680);
    }
  }  

  void keyPressed() {
    //boton iniciar
    if (key == 'e') {       
      estado = 1;
      punto=0;
    }
    //boton creditos
    if (key=='i') {
      estado=4;
      punto=0;
    }
    //perdiste
    if (key=='p') {
      estado=3;
      punto=0;
    }//boton reinicio
    if (key=='r') {
      estado=0;
      punto=0;
    }//devuelta al inicio
    if (key=='g') {
      estado=0;
      punto=0;
    }
  }
}
