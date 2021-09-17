//Orquera Josue Samuel
//Tecnología Multimedial 1
//Aventura Gráfica.
//Enlace Youtube: https://www.youtube.com/watch?v=XA-_vQNMxjs&ab_channel=SamuelOrquera


// declaracion variables
int pantalla;

//Imagenes
PImage pantalla00, pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9, pantalla10, pantalla11, pantalla13;
PImage textopantalla3, brillo1;

//variables Pantalla 9
int x;
int velocx;

int maxImages = 9;
int imageIndex = 0;

PImage [] images = new PImage [maxImages];



void setup(){
  
  //Tamaño de Pantalla
  size (600,600);
  
  fill(236,238,99);
  textSize (25);
  textAlign (CENTER);
  
  pantalla= 0;
  
  //Fondos
  pantalla00 =loadImage ("pantalla00.jpg");
  pantalla1 = loadImage ("pantalla1.jpg");
  pantalla2 = loadImage ("pantalla2.jpg");
  pantalla3 = loadImage ("pantalla3.jpg");
  pantalla4 = loadImage ("pantalla4.jpg");
  pantalla5 = loadImage ("pantalla5.jpg");
  pantalla6 = loadImage ("pantalla6.jpg");
  pantalla7 = loadImage ("pantalla7.jpg");
  pantalla8 = loadImage ("pantalla8.jpg");
  pantalla9 = loadImage ("pantalla9.jpg");
  pantalla10 = loadImage ("pantalla10.jpg");
  pantalla11 = loadImage ("pantalla11.jpg");
  pantalla13 = loadImage ("pantalla13.jpg");
  
  //Extras
  textopantalla3 = loadImage ("textopantalla3.png");
  brillo1 = loadImage ("brillo1.png");
  
   
  
  for (int i = 0; i < images.length; i ++ ){
    images[i] = loadImage ("bucle_" + i + ".png");
    
    }
    
  
  
   frameRate(10);
  
  
  x= -400;
 velocx = 1;
 
}



void draw(){
  
  if (pantalla == 0){
    image(pantalla00,0,0);
    
} else if (pantalla ==1) {
  image(pantalla1,0,0);

} else if (pantalla ==2) {
  image (pantalla2,0,0);
  
} else if (pantalla ==3) {
  
  image (pantalla3,0,0);
  
  image (images[imageIndex],0,0);
  imageIndex = (imageIndex+1) % images.length;
    
  image (textopantalla3,0,0);
  
} else if (pantalla ==4) {
  image (pantalla4,0,0);
  text ("Muerto",300,550);
  
} else if (pantalla ==5) {
  image (pantalla5,0,0);
  
} else if (pantalla ==6) { 
  image (pantalla6,0,0);
  
  
} else if (pantalla ==7) { 
  image (pantalla7,0,0);
  
} else if (pantalla ==8) {
  image (pantalla8,0,0);
  
  
} else if (pantalla ==9) { 
  
  image (pantalla9,0,0);
  image (brillo1,x,0);
 
  
  x = x+velocx;
  
  if (x>-50){
    velocx =-10;
    } else if (x<-350){
  velocx=10;
  }
  
  
  text ("click",300,500);
 
  
} else if (pantalla ==10) {
  image (pantalla10,0,0);
  
  
} else if (pantalla ==11) {
  image (pantalla11,0,0);
 
 
} else if (pantalla ==13) {
  image (pantalla13,0,0);
  
}


//Reemplazamos el cursor y dibujamos una mira telescopica
noCursor();
stroke (200);
strokeWeight (2);
noFill();
ellipseMode (CENTER);
  ellipse (mouseX,mouseY,10,10);
  ellipse (mouseX,mouseY, 25,25);
line (mouseX-20,mouseY,mouseX+20,mouseY);
line (mouseX,mouseY-20,mouseX,mouseY+20);
  
}
  
void mousePressed (){
 
  if (pantalla == 0){
  pantalla=1;
  if (dist (mouseX,mouseY,450,475)<25){
    pantalla=13;
  }
      
} else if (pantalla ==1) {
  if (dist (mouseX,mouseY,150,300)<25){
    pantalla=2;
  }
  if (dist (mouseX,mouseY,450,150)<25){
    pantalla=3;
  }

} else if (pantalla ==2) {
  pantalla=4;
  
} else if (pantalla ==3) {
  if (dist (mouseX,mouseY,150,300)<40){
    pantalla=5;
  }
  if (dist (mouseX,mouseY,450,300)<40){
    pantalla=6;
  }
  
} else if (pantalla ==4) {
  pantalla=0;
  
} else if (pantalla ==5) {
  if (dist (mouseX,mouseY,150,300)<25){
    pantalla=7;
  }
  if (dist (mouseX,mouseY,450,300)<25){
    pantalla=8;
  }
  
} else if (pantalla ==6) { 
    pantalla=4;
  
} else if (pantalla ==7) { 
  if (dist (mouseX,mouseY,150,300)<25){
    pantalla=9;
  }
  if (dist (mouseX,mouseY,450,150)<25){
    pantalla=10;
  }
  
} else if (pantalla ==8) {
 pantalla=4;
  
} else if (pantalla ==9) { 
  pantalla=11;
   
} else if (pantalla ==10) {
  pantalla=4;
   
} else if (pantalla ==11) {
  pantalla=0;
   
} else if (pantalla ==13) {
  pantalla=0;
}
}
