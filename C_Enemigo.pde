//declaración de una clase:
//primero, nombre de la clase: sitaxis:

class Enemigo {
  
  //propiedades:
  float x, y, ancho, alto;
  float despX, despY;
  PImage [] Enemigo;
  int cantCuadros;


  //constructor:
  Enemigo() {
    ancho = 120;
    alto = 120;
    despX=0;
    despY=random(2, 7);
    cantCuadros = 4;
    Enemigo = new PImage [cantCuadros];
    for ( int i=0; i< cantCuadros; i++ ) {
      Enemigo[i] = loadImage("m_"+nf(i, 1)+".png");
    }
  }

  //funcionalidad:
  void dibujar() {
    pushMatrix();
    pushStyle();
    translate (x, y);
    rectMode(CENTER);
    image (Enemigo[frameCount%cantCuadros], 0, 0, ancho, alto);
    popStyle();
    popMatrix();
  }
  void mover() {
    x+=despX;
    y+=despY;

    if (y>height+alto/2) {
      y= -120;
      x= random (20, width-20);
    }
  }
  

  //metodo para evaluar colisión:
  boolean colision (float x_, float y_, float ancho_, float alto_ ) {
    if (
      x-ancho/2 < x_+ancho_/2
      && x+ancho/2 > x_-ancho_/2
      && y-alto/2 < y_+alto_/2
      && y+alto/2 > y_-alto_/2
      ) {
      //hay colision:
      return true;
    } else {
      return false;
    }
  }
}
