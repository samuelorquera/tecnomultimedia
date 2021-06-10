//TP2: Creditos
//Tecnologia Multimedial 1
//Prof. David Bedoian
//Orquera Josue Samuel
//81896/8

//IMAGENES:
PImage titulo, figura3, figura4, figura5, figura6, figura7, figura9;

//FUENTE
PFont fuente;
PFont fuente1;

//VARIABLES
int movTitulo;
int movTitulo2;
int movTitulo3;
int eleva;

int estado;
int aumento;

int desplazaDer;
int desplazaIzq;

int desplazamientoPositivo;
int desplazamientoNegativo;

int caida;


void setup (){
  size (600,400);
  background (0);
  
  movTitulo = 500;
  movTitulo2 =100;
  movTitulo3 = 400;
  eleva = 350;
  
  titulo = loadImage("titulo.png");
  figura3 = loadImage ("figura3.png");
  figura4 = loadImage ("figura4.png");
  figura5 = loadImage ("figura5.png");
  figura6 = loadImage ("figura6.png");
  figura7 = loadImage ("figura7.png");
  figura9 = loadImage ("figura9.png");
  
  
fuente = loadFont ("Gadugi-Bold-30.vlw");
fuente1 = loadFont ("Gadugi-Bold-48.vlw");
  
  
  estado = 0;
  aumento = 0;
  
 desplazaDer= -1500;
 desplazaIzq = 1500;
 
 desplazamientoPositivo = 100;
 desplazamientoNegativo = 200;
 
 caida = -200;
  
  
}

void draw (){ 
 
  //TITULO
  if (estado <= 150){
  background (aumento,0,0);
  aumento =  aumento +1;
  
  image(titulo, 0,0);
  
  
    
    
    //PANTALLA 1 ELASTIGIRL
  } else if ( estado <= 300 ){
     background (145,0,0); 
     
     textAlign(CENTER);
      textSize(30);
      fill(255);
  
      textFont (fuente);
      text ("ESCRITO Y DIRIGIDO POR",movTitulo, 170);
      movTitulo = ( movTitulo - 1 );
      
      textFont (fuente1);
      text ("BRAD BIRD",movTitulo, 210);
      movTitulo = ( movTitulo - 1 );
      
      
     
      image (figura3, desplazaDer , -200);
      desplazaDer = desplazaDer +10;
      
      image (figura4, desplazaIzq , 0);
      desplazaIzq = desplazaIzq -10;
      
      
      
      
      
      //PANTALLA 2 DASH
      } else if ( estado <= 500 ){
        background (0);
        
        image (figura5, -390, 0);
          
          
          textAlign(CENTER);
      textSize(30);
      fill(255);
  
      textFont (fuente);
      text ("PRODUCIDO POR",movTitulo2, 170);
      movTitulo2 = ( movTitulo2 + 1 );
      
      textFont (fuente1);
      text ("JOHN WALKER",movTitulo2, 210);
      movTitulo2 = ( movTitulo2 + 1 );
          
          
        
             
        image (figura6, desplazamientoNegativo, 200);
        desplazamientoNegativo = desplazamientoNegativo -1;
        
        
        
        //PANTALLA 3 VIOLETA
        } else if ( estado <= 700 ){
          background (100,0,0);
          
          textAlign(CENTER);
      textSize(30);
      fill(255);
  
      textFont (fuente);
      text ("DIRECCION MUSICAL",movTitulo3, 170);
      movTitulo3 = ( movTitulo3 - 1 );
      
      textFont (fuente1);
      text ("MICHAEL GIACCHINO",movTitulo3, 210);
      movTitulo3 = ( movTitulo3 - 1 );
      
          
          image (figura7, desplazamientoPositivo, 0);
          desplazamientoPositivo = desplazamientoPositivo +1;
          
          
          
          //PANTALLA 4 JACK
          } else if ( estado <= 900 ){
            background (255,130,0);
            
            textAlign(CENTER);
      textSize(30);
      fill(255);
  
      textFont (fuente);
      text ("DISEÑO PRODUCCIÓN",300, eleva);
      eleva = ( eleva - 1 );
      
      textFont (fuente1);
      text ("LOU ROMANO",380, eleva+40);
      eleva = ( eleva - 1 );
            
            
            image (figura9, 0, caida);
            caida = caida +2;
            
                           
              }
              
  estado = estado +1;
  
  if (estado >= 1000){
    estado = 0;
    }
    
}
