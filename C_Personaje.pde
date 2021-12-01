//declaración de una clase:
class Personaje {
  
  //propiedades:
  float x, y, ancho, alto;
  float despX, despY;
  PImage Personaje;

  //constructor:
  Personaje () {
    Personaje = loadImage ("personaje.png");
    x = width/2;
    y = height*2/3;
    ancho = 120;
    alto = 120;
  }

  //funcionalidad:
  void dibujar() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    rectMode(CENTER);
    image (Personaje, 0, 0, ancho, alto);

    popStyle();
    popMatrix();


    if (keyPressed) {
      if (keyCode==LEFT) {
        x = x-10;
      } else if (keyCode==RIGHT) {
        x = x+10;
      } else if (keyCode==UP) {
        y = y-10;
      } else if (keyCode==DOWN) {
        y = y+10;
      }
    }
  }
}
