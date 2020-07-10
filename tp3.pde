//variables globales
int pantalla;
PImage p0;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage p5;
PImage p6;
PImage p7;
PImage p8;
PImage p9;
PImage p10;
PImage p11;
PImage p12;
PImage p13;

void setup () {
  size (500,400);
  textSize (25);
  textAlign (CENTER);
  
  pantalla= 0;
  p0 =loadImage ("p0.png");
  p1 = loadImage ("p1.png");
  p2 = loadImage ("p2.png");
  p3 = loadImage ("p3.png");
  p4 = loadImage ("p4.png");
  p5 = loadImage ("p5.png");
  p6 = loadImage ("p6.png");
  p7 = loadImage ("p7.png");
  p8 = loadImage ("p8.png");
  p9 = loadImage ("p9.png");
  p10 = loadImage ("p10.png");
  p11 = loadImage ("p11.png");
  p12 = loadImage ("p12.png");
  p13 = loadImage ("p13.png");
}

void draw () {
  background (150);
  
  if (pantalla == 0){
    
    image(p0,0,0);
    //text ("CLICK PARA EMPEZAR", width/2, height/2);
    
    //ellipse (250, 350, 50,50);
    
} else if (pantalla ==1) {
  image(p1,0,0);
  //text ("pantalla 1", width/2, height/2);
  //ellipse (100,100,80,80);
  //ellipse (400,100,80,80);

} else if (pantalla ==2) {
  image (p2,0,0);
  //text ("pantalla 2", width/2, height/2);
  //text ("CLICK PARA CONTINUAR", width/2, height/2+50);
  
} else if (pantalla ==3) {
  image (p3,0,0);
  //text ("pantalla 3", width/2, height/2);
 // ellipse (100,100,80,80);
  //ellipse (400,100,80,80);
  
} else if (pantalla ==4) {
  image (p4,0,0);
  //text ("pantalla 4", width/2, height/2);
  //text ("CLICK PARA CONTINUAR", width/2, height/2+50);  
  
} else if (pantalla ==5) {
  image (p5,0,0);
  //text ("pantalla 5", width/2, height/2);
//ellipse (100,100,80,80);
 // ellipse (400,100,80,80);
  
} else if (pantalla ==6) { 
  image (p6,0,0);
  //text ("pantalla 6", width/2, height/2);
  
  
} else if (pantalla ==7) { 
  image (p7,0,0);
  //text ("pantalla 7", width/2, height/2);
  //ellipse (100,100,80,80);
  //ellipse (400,100,80,80);
  
} else if (pantalla ==8) {
  image (p8,0,0);
  //text ("pantalla 8", width/2, height/2);
  
  
} else if (pantalla ==9) { 
  image (p9,0,0);
  //text ("pantalla 9", width/2, height/2);
  
  
} else if (pantalla ==10) {
  image (p10,0,0);
  //text ("pantalla 10", width/2, height/2);
  
  
} else if (pantalla ==11) {
  image (p11,0,0);
  //text ("pantalla 11", width/2, height/2);
  
  
} else if (pantalla ==12) {
  image (p12,0,0);
  //text ("pantalla 12", width/2, height/2);
  
  
} else if (pantalla ==13) {
  image (p13,0,0);
  
  //text ("pantalla 13", width/2, height/2);
  
  
}

}
  
void mousePressed () {
 
  if (pantalla == 0){
  pantalla=1;
  if (dist (mouseX,mouseY,250,350)<25){
    pantalla=13;
  }
      
} else if (pantalla ==1) {
  if (dist (mouseX,mouseY,100,100)<40){
    pantalla=2;
  }
  if (dist (mouseX,mouseY,400,100)<40){
    pantalla=3;
  }

} else if (pantalla ==2) {
  pantalla=4;
  
} else if (pantalla ==3) {
  if (dist (mouseX,mouseY,100,100)<40){
    pantalla=5;
  }
  if (dist (mouseX,mouseY,400,100)<40){
    pantalla=6;
  }
  
} else if (pantalla ==4) {
  pantalla=0;
  
} else if (pantalla ==5) {
  if (dist (mouseX,mouseY,100,200)<40){
    pantalla=7;
  }
  if (dist (mouseX,mouseY,400,200)<40){
    pantalla=8;
  }
  
} else if (pantalla ==6) { 
    pantalla=4;
  
} else if (pantalla ==7) { 
  if (dist (mouseX,mouseY,100,100)<40){
    pantalla=9;
  }
  if (dist (mouseX,mouseY,400,100)<40){
    pantalla=10;
  }
  
} else if (pantalla ==8) {
 pantalla=4;
  
} else if (pantalla ==9) { 
  pantalla=11;
   
} else if (pantalla ==10) {
  pantalla=12;
   
} else if (pantalla ==11) {
  pantalla=0;
   
} else if (pantalla ==12) {
  pantalla=0;
   
} else if (pantalla ==13) {
  pantalla=0;
}}
