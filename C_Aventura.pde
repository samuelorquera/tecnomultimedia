//declaración de una clase:
class Aventura {
//________________________________________________________________________
  //propiedades:
 //declaracion de variables

//arreglo de fondos
int maxImages = 13;
PImage [] fondos = new PImage[maxImages];
int imageIndex = 0;

//Extras
PImage textopantalla3, brillo1;

//variables Pantalla 9
int x;
int velocx;

//Arreglo para efecto luz titilando en escaleras
int maxImage = 9;
int imageIndexx = 0;
PImage [] images = new PImage [maxImage];

//para construir una instancia de la clase juego
Juego juego;


//_______________________________________________________________________
  //constructor:
  Aventura () {
    fill(236,238,99);
  textSize (25);
  textAlign (CENTER);

  pantalla=0;

//Declaracion de un Ciclo for para cargar los diferentes fondos
  for (int i = 0; i<fondos.length; i++) {
    fondos[i]= loadImage ("fondo"+i+".jpg");
  }

  //Extras
  textopantalla3 = loadImage ("textopantalla3.png");
  brillo1 = loadImage ("brillo1.png");


  //Efecto de luces titilando en escalera
  for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage ("bucle_" + i + ".png");
  }


//Para controlar la velocidad del desplazamiento de "brillo puerta abriendo" en pantalla 9
  frameRate(10);
  x= -400;
  velocx = 1;
  
   juego = new Juego ();
   
}


//______________________________________________________________________
  //funcionalidad:
  void actualizar () {
    println(pantalla);
  
  image(fondos[imageIndex],0,0,width,height);

  if (pantalla == 0) {
    imageIndex=0;
  } else if (pantalla ==1) {
    imageIndex=1;
  } else if (pantalla ==2) {
    juego.actualizar();
  } else if (pantalla ==3) {
    imageIndex=3;

    image (images[imageIndexx], 0, 0);
    imageIndexx = (imageIndexx+1) % images.length;

    image (textopantalla3, 0, 0);
  } else if (pantalla ==4) {
    imageIndex=4;
    text ("Muerto", 300, 550);
  } else if (pantalla ==5) {
    imageIndex=5;
  } else if (pantalla ==6) { 
    imageIndex=6;
  } else if (pantalla ==7) { 
    imageIndex=7;
  } else if (pantalla ==8) {
    imageIndex=8;
  } else if (pantalla ==9) { 
    imageIndex=9;
    image (brillo1, x, 0);

//Desplazamiento imagen "Brillo puerta abriendo"
    x = x+velocx;

    if (x>-50) {
      velocx =-10;
    } else if (x<-350) {
      velocx=10;
    }


    text ("click", 300, 500);
  } else if (pantalla ==10) {
    imageIndex=10;
  } else if (pantalla ==11) {
    imageIndex=11;
  } else if (pantalla ==13) {
    imageIndex=12;
  }
}

void presionoMouse(){
if (pantalla == 0){
  if (dist (mouseX,mouseY,149,476)<25){
    pantalla=1;
  }
  if (dist (mouseX,mouseY,453,476)<25){
    pantalla=13;
  }
      
} else if (pantalla ==1) {
  if (dist (mouseX,mouseY,149,300)<25){
    pantalla=2;
  }
  if (dist (mouseX,mouseY,453,150)<25){
    pantalla=3;
  }
  
} else if (pantalla ==3) {
  if (dist (mouseX,mouseY,149,300)<40){
    pantalla=5;
  }
  if (dist (mouseX,mouseY,453,300)<40){
    pantalla=6;
  }
  
} else if (pantalla ==4) {
  pantalla=0;
  
} else if (pantalla ==5) {
  if (dist (mouseX,mouseY,149,300)<25){
    pantalla=7;
  }
  if (dist (mouseX,mouseY,453,300)<25){
    pantalla=8;
  }
  
} else if (pantalla ==6) { 
    pantalla=4;
  
} else if (pantalla ==7) { 
  if (dist (mouseX,mouseY,153,300)<25){
    pantalla=9;
  }
  if (dist (mouseX,mouseY,453,150)<25){
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
}
