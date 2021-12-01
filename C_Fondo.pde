//fondo en movimiento
class Fondo {
  
  //propiedades:
  PImage imgFondo;
  float y;
  float velY;

  //constructor:
  Fondo () {
    imgFondo = loadImage ("suelo3.png");
    y = -600;
    velY = 2;
  }
  //funcionalidad:
  void actualizar () {
    //dibujamos fondo
    image (imgFondo, 0, y, width, height*2);
    //cambiamos el valor de y:
    y+=velY;
    if (y>0) {
      y=-600;
    }
  }
}
