size(400, 400);
background(0);
strokeWeight(2);

fill(#B7936F);
rect(0, 0, 400, 400, 30, 30, 40, 40);
fill(#85390C);
rect(0,0, 400, 140, 30, 30, 0, 0);

strokeWeight(2);

//circulo1
fill(#ded3ce);
circle(200,200,220);
//circulo2
fill(#362b70);
circle(200,200,195);
//circulo3
fill(#216a7d);
circle(200,200,190);
//circulo4
fill(#46636b);
circle(200,200,140);
//circulo5
fill(#492570);
circle(200,200,100);

//logo chico
fill(#1f1a16);
rect(310,30,70,70,10,10,10,10);
fill(#3b125d);
circle(344,64,40);

//rectangulos rojo, amarillo, verde y azul
fill(#cb0a0a);
rect(30,0,15,140);
fill(#ebc530);
rect(45,0,15,140);
fill(#30e0ba);
rect(60,0,15,140);
fill(#2691ee);
rect(75,0,15,140);

//texto insta
fill(#574f44);
rect(20,120,80,30, 20);
fill(#FFFDFC);

text("INSTAGRAM", 25, 140);

//circulo transparente
noStroke();
fill (255,255,255,30);
ellipse(200,180,200,100);
