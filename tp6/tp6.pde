//Orquera Josue Samuel
//Tecnología Multimedial 1
//tp6 - Integración Aventura Grafica.
//Enlace Youtube:

//declaracion de un espacio en memoria
//para construir una instancia de la clase aventura
Aventura aventura;

int pantalla;

void setup(){

  //tamaño de pantalla
  size(600,600);
  aventura = new Aventura();
  
}
void draw(){
  background(0);
  aventura.actualizar();
  
}
void mousePressed(){
  aventura.presionoMouse();
  
}
