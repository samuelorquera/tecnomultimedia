//IMAGENES
PImage plantaderecha;
PImage plantaizquierda;

//FUENTES

//TITULO PELICULA:
PFont laFuente;

//SUBTITULO:
PFont laFuente1;

//nombres:
PFont laFuente2;

//VARIABLES
//movimiento plantas
int derecha;
int izquierda;

//titulo
int titulo;

//elenco principal
int principal;
int nombres;

//elenco secundario
int secundario;
int nombre;

//banda sonora
int banda;
int nom;

//direccion
int direccion;
int name;

void setup(){
  size(720,400);
  
  plantaderecha = loadImage ("follaje derecho.png.png");
  plantaizquierda = loadImage ("follaje izquierdo.png.png");
  
  derecha = 400;
  izquierda = 400;
  
  //titulo pelicula
  titulo=440;
  
  //elenco principal
  principal=880;
  nombres=920;
  
  //elenco secudario
  secundario=1320;
  nombre=1360;
  
  //banda sonora
  banda=1800;
  nom=1840;
  
  //direccion
  direccion=2240;
  name=2280;
  
  
  laFuente = loadFont ("ArialMT-30.vlw");
  laFuente1 = loadFont ("ArialMT-20.vlw");
  laFuente2 = loadFont ("ArialMT-12.vlw");
}


void draw(){
  background (0);
  
  //PLANTAS
  image (plantaderecha, 484, derecha );
  derecha = derecha - 1;
  
  image (plantaizquierda, 0, izquierda );
  izquierda = izquierda - 1;
  
  
  textAlign(CENTER);
  textSize(20);
  fill(255);
  
  // TITULO PELICULA
  textFont (laFuente);
  text ("AVATAR",width/2,titulo);
  titulo = ( titulo - 1 );
  
  
  //ELENCO PRINCIPAL
  textFont (laFuente1);
  text("ELENCO PRINCIPAL", width/2, principal);
  principal = ( principal -1 );
  
  
  
  textFont (laFuente2);
  text("Sam Worthingtone ", width/2, (nombres));
  text("Zoe Saldana ", width/2, (nombres)+15);
  text("Sigourney Weaver ", width/2, (nombres)+30);
  text("Stephen Lang ", width/2, (nombres)+45);
  text("Michelle Rodriguez ", width/2, (nombres)+60);
  text("Giovanni Ribisi ", width/2, (nombres)+75);
  text("Joel David Moore ", width/2, (nombres)+90);
  text("Wes Studi ", width/2, (nombres)+105);
  
  nombres = ( nombres -1 );
  
  
  //ELENCO SECUNDARIO
  textFont (laFuente1);
  text("ELENCO SECUNDARIO", width/2, secundario);
  secundario = ( secundario -1 );
  
  
  
  textFont (laFuente2);
  text("Laz Alonso ", width/2, (nombre));
  text(" Dileep Rao ", width/2, (nombre)+15);
  text(" Peter Mensah ", width/2, (nombre)+30);
  text(" Matt Gerald ", width/2, (nombre)+45);
  text(" Scott Lawrence ", width/2, (nombre)+60);
  text(" Sean Moran ", width/2, (nombre)+75);
  text(" Julene Renee ", width/2, (nombre)+90);
  text(" Woody Schultz ", width/2, (nombre)+105);
  text("Camille Keenan ", width/2, (nombre)+120);
  text(" Jacob Tomuri ", width/2, (nombre)+135);
  text(" Peter Dillon ", width/2, (nombre)+150);
  text(" Kelson Henderson ", width/2, (nombre)+165);
  text(" James Pitt ", width/2, (nombre)+180);
  text(" Kevin Dorman ", width/2, (nombre)+195);
  text(" Dean Knowsley ", width/2, (nombre)+210);
  text(" Adrew Emilio DeCesare ", width/2, (nombre)+225);
  
  nombre = ( nombre -1 );
  
  
  
  //BANDA SONORA
  textFont (laFuente1);
  text("BANDA SONORA", width/2, banda);
  banda = ( banda -1 );
  
  
  
  textFont (laFuente2);
  text("Compositor", width/2, (nom));
  text("James Horner ", width/2, (nom)+15);
  text("Compositor banda sonora ", width/2, (nom)+40);
  text("Simon Franglen ", width/2, (nom)+55);
  text("Compositor banda sonora ", width/2, (nom)+80);
  text("James Horner ", width/2, (nom)+95);
  nom = ( nom -1 );
  

//DIRECCION
  textFont (laFuente1);
  text("DIRECCIÓN", width/2, direccion);
  direccion = ( direccion -1 );
  
  
  
  textFont (laFuente2);
  text("Dirección General", width/2, (name));
  text("James Cameron ", width/2, (name)+15);
  text("Dirección de Fotografía ", width/2, (name)+40);
  text("Mauro Fiore ", width/2, (name)+55);
  text("Dirección de Arte ", width/2, (name)+80);
  text("Nick Bassett ", width/2, (name)+95);
  text("Dirección de Reparto ", width/2, (name)+120);
  text("Margery Simkin ", width/2, (name)+135);
  name = ( name -1 );
  

}
