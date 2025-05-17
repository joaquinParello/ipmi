int esquinaX1 = 450;
int esquinaY1 = 400;
int ancho = 150;
int alto = 60;
int centroX = 300;
int centroY = 400;
int diametro = 100;
float distanciaMouseBoton;
int alpha;
color relleno;
int tamano;
float x, y, tm2, y2;
String estado;  
PImage truco2;
PImage truco8;  
PImage truco7;

void setup() {
  size( 640, 480 );
  textSize( tamano );
  textAlign( CENTER, CENTER );
  truco2 = loadImage("truco2.jpg");
  truco8 = loadImage("truco8.jpg");
  truco7 = loadImage("truco7.jpg");
  
  y2 = 480;
  alpha = 255;
  tm2 = 640;
  tamano = 0;
  x=320;
  y=200;
  relleno = color(0, 200, 0, alpha);
  estado = "truco2.jpg";
}

void draw() {
   
  
  println( frameCount/60);
 if ( estado =="truco2.jpg") {  
   image(truco2,0,0);   
    textSize( tamano );
    fill(0);
    text( "El truco argentino\n se juega con 40 cartas \nentre 2 jugadores \no en grupos \n y su objetivo es\n ganar un partido", width/2, height/2 );
 }
 if( tamano < 55 ){ 
    tamano = tamano + 1;   
 }    
    if ( frameCount/60 >= 5)  {
      estado = "truco7.jpg";
      }
   if ( estado == "truco7.jpg") {
   tamano = 0;
     image(truco7,0,0);
     fill(0);  
    textSize(40);
    text( "El tope son 15 o 30 puntos, \n según lo que se haya establecido \nantes de comenzar. ", tm2, y);
      tm2 = tm2 - 1;
      y = 200;
 }
if ( frameCount/60 >= 12)  {
      estado = "truco8.jpg";
      }
   if ( estado == "truco8.jpg") {
   tm2 = 640;
     image(truco8,0,0);
     fill(255);  
      textSize(36);
    text( "En el caso de que se juegue a 30 puntos,\n los primeros 15 \nse definirán como “las malas”\n y los segundos 15 como las buenas", width/2, y2);
    fill(255);
    y2 = y2 -1;
   }  
    if ( frameCount/60 >= 15) {
      rect (esquinaX1, esquinaY1, ancho, alto);
        fill(0);
    text("Reiniciar",526 ,432);
   
  distanciaMouseBoton = dist(mouseX, mouseY, centroX, centroY);
 } }
 
 void mousePressed() {
  if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
     frameCount = 0;
     estado ="truco2.jpg";       

  } }
     
