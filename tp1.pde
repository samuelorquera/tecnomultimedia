//CIRCULO CROMATICO
//Josué Samuel Orquera
//Comision 3

void setup (){
  size(400,400);
  background(0);
 
 
}

void draw (){

//Triangulo 1

fill(255,0,125);
triangle (200,200,287,50,200,0);  

//Triangulo 2  
fill(255,0,255);
triangle (200,200,200,0,113,50);

//Triangulo 3  
fill(125,0,255);
triangle (200,200,113,50,25,100);

//Triangulo 4  
fill(0,0,255);
triangle (200,200,25,100,0,200);

//Triangulo 5  
fill(0,125,255);
triangle (200,200,0,200,25,300);

//Triangulo 6
fill(0,255,255);
triangle (200,200,25,300,113,350);

//Triangulo 7 
fill(0,255,125);
triangle (200,200,200,400,113,350);

//Triangulo 8
fill(0,255,0);
triangle (200,200,200,400,288,350);

//Triangulo 9
fill(125,255,0);
triangle (200,200,288,350,375,300);

//Triangulo 10
fill(255,255,0);
triangle (200,200,400,200,375,300);

//Triangulo 11
fill(255,125,0);
triangle (200,200,375,100,400,200);

//Triangulo 12
fill(255,0,0);
triangle (200,200,400,100, 288,50);


//circulo central
  fill(0);
  ellipse(200,200,100,100);
  
  
//Circulo periferia
pushStyle();
noFill ();
strokeWeight (150);
ellipse (200,200,400,400);
popStyle();
  

//NOMBRE COLORES

//Rosa
fill (255);
text ("Rosa", 220,60);

//Magenta
text ("Magenta", 140,60);

//Violeta
text ("Violeta", 70,100);

//Azul
text ("Azul", 45,160);

//Celeste
text ("Celeste", 30,240);

//Cian
text ("Cian", 80,300);

//Verde Agua
text ("Verde agua", 120,340);

//Verde
text ("Verde", 220,340);


//Verde Limon
text ("Verde Limon", 300,300);

//Amarillo
text ("Amarillo", 330,240);

//Naranja
text ("Naranja", 330,160);

//ROJO
text ("Rojo", 300,100);
  
}
