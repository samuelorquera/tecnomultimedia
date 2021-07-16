//Josué Samuel Orquera 
//Tecnología Multimedial 1
//Ilusión Optica.
//Enlace Youtube: https://youtu.be/D1i_6xWISRA


void setup(){
  //definimos tamaño de la Pantalla
  size(600,600);
  
}

void draw(){
  
  //designamos el sistema HSB y el color fondo de pantalla
  colorMode(HSB);
  background (0);
  
   //iniciamos el ciclo for
  for (int a=0 ; a<20 ; a++){ 
    
    //declaramos y usamos variables temporales
   //variables para el centro de la pantalla
    float x= map( a , 0 , 19 , width/2 , mouseX) ;
    float y= map( a , 0 , 19 , height/2 , mouseY) ;
    
    //variable para tamaño
    float tam = map( a , 0 , 19 , width, 0 ) ;
    
    //Aislamos los parametros con pushMatrix
 pushMatrix();
 
 //Transladamos el punto de anclaje al centro de la pantalla con variables descartables
    translate (x,y);
    
      
    rectMode(CENTER);
    //pintamos y declaramos los rectangulos de negro
    fill (0);
    rect (0,0, tam,tam);
    
    
    //declaramos If, si cliqueamos el mouse, los circulos cambian de colores random
    //sino se quedan de color blanco
    if (mousePressed){
      fill (random(0,mouseX),255,255);
    } else {
      fill (255);
    }
    
    ellipse (0,0,tam,tam);
    popMatrix();
    
  }
}
