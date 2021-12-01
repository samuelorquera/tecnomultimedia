//declaración de una clase:
class Juego {

  //propiedades:
  Fondo fondo;

  Enemigo [] enemigo;
  int cantEnemigos;

  Personaje personaje;

  PImage imgAtmosfera;

  //constructor:
  Juego () {
    imgAtmosfera = loadImage ("atmosfera.png");
    fondo = new Fondo();
    cantEnemigos = 5;
    enemigo = new Enemigo[cantEnemigos];
    for (int i=0; i<cantEnemigos; i++) {
      enemigo [i] = new Enemigo();
    }

    personaje = new Personaje ();
  }

  //funcionalidad:
  void actualizar () {
    fondo.actualizar(); 
    for (int i=0; i<cantEnemigos; i++) {
      enemigo[i].dibujar();
      enemigo[i].mover();
    }

    //evaluo colision:
    if ( enemigo[1].colision(personaje.x, personaje.y, personaje.ancho, personaje.alto) ) {
      pantalla=4;
      //println ("Perdiste");
    }

    //tiempo
    if (frameCount ==500) {
      pantalla=5;
      //println ("Ganaste");
    }


    personaje.dibujar();

    image (imgAtmosfera, 0, 0, width, height);
  }
}
