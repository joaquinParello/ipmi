
PImage paisaje;
void setup(){
  size(800,400);
  paisaje = loadImage("paisaje.jpg");
}
 
void draw(){
 
  background(75,165,255);
  
fill(255);
circle(433, 9,30);
circle(456, 23,60);
circle(433 ,42,40);
circle(450, 70,30);
circle(476,70,35);
circle(500, 118,70);
 circle(676 ,235,75);
circle(508, 71,40);
circle(778 ,168,90);

 
 fill(136,145,206);
 triangle(483, 112,452 ,209,511 ,203);
 triangle(441, 94,387, 274,521, 249);
 triangle(756 ,144,702, 265,785 ,269
); 
 triangle(780 ,128,738, 216,790, 219);
 triangle(659, 300,800, 143,800, 300);
 triangle(399, 295,540, 79,681, 300);

  fill(42,116,188);
rect(400 ,278,799 ,276);
 
 fill(62, 147, 29);
 triangle(620, 223,593, 284,650 ,284
);
 circle(662 ,279,70);
 circle(597,279,67);
 circle(500,271,100);
 circle(415,268,68);
 circle(790,271
,87);
 circle(629, 317,80);
circle (496 ,306, 90);
  
  paisaje.resize (400,400);
  image(paisaje,0,0);
 
 
 
 fill(88,232,28);
 rect(400,296,800,311);


  
 fill(103,66,26);
 quad(718, 128,709, 301,737, 300,734 ,127);
 quad(530, 249,527, 296,561, 297,565 ,248);
 quad(427, 248,425 ,300,461 ,300,457, 246);

 fill(62, 147, 29);
triangle(439, 155,409, 245,480, 243);
 triangle(724, 62,693, 233,756, 235);
circle(549, 209,90);


 }
 void mousePressed(){
  println(mouseX , mouseY);
}
