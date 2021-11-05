//Orquera Josue Samuel
//Tecnología Multimedial 1
//tp5 - Video Juego.
//Enlace Youtube: https://youtu.be/93vRAk4CmzI


//declaracion de un espacio en memoria
//para construir una instancia de la clase juego
Juego juego;

int pantalla;
PImage pantalla0, pantalla2;


void setup() {
  size(600, 600);

  juego = new Juego ();

  pantalla= 0;
  //Fondo Pantalla INICIO
  pantalla0 =loadImage ("pantalla0.jpg");
}

void draw () {

  if (pantalla == 0) {
    image(pantalla0, 0, 0);
  } else if (pantalla ==1) {
    juego.actualizar();
  } else if (pantalla ==2) {

    background (0);
    pushStyle();
    textAlign(CENTER);
    fill(200, 0, 0);
    textSize (50);
    text("PERDISTE", width/2, height/2);
    popStyle();
    textAlign(CENTER);
  } else if (pantalla ==3) {

    background (0);
    pushStyle();
    textAlign(CENTER);
    fill(255);
    textSize (50);
    text("GANASTE", width/2, height/2);
    popStyle();
    textAlign(CENTER);
  }
}  

void mousePressed () {

  if (pantalla == 0) {
    pantalla=1;
    if (dist (mouseX, mouseY, 300, 450)<25) {
      pantalla=1;
    } else if (pantalla ==2) {
      pantalla = 0;
    } else if (pantalla ==3) {
      pantalla = 0;
    }
  }
}
