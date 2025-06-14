// LINK DEL VIDEO: https://www.youtube.com/watch?v=uWdiou67fhA
//TECLAS:
//A cambio automatico de los colores
//ambos click izq(modo manual de cambio de color) der(intercambia colores)
//D cambia el tamaño de los circulos segun la posicion del mouse

color oscuro = color(3, 15, 36);
color claro = color(34, 41, 155);
PImage img;
int tamtotal = 133; // tamaño de circulos y cuadrados
int ultimoframe = 0; 
int seg = 60; // equivale a un segundo
boolean automatico = false; // cambio automatico
boolean tamanos = false; // cambio de tamaño

void setup() {
  size(800, 400);
  img = loadImage("Optica.jpeg");
  image(img, 0, 0);
}

void draw() {
  cuadrados(tamtotal);
  circulos(tamtotal);

  // Verificar si paso 1seg para cambiar los colores automáticamente
  if (automatico && frameCount - ultimoframe >= seg) {
    coloresr();
    ultimoframe = frameCount; // POR LAS DUDAS DE EPILEPSIA NO BORRAR
  }
}

void keyPressed() {
//TAMAÑO DE CIRCULOS
  if (key == 'd' || key == 'D') {
    if (tamanos) {
      tamanos = false;
    } else {
      tamanos = true;
    }
  }
//REINICIO
  if (key == 'r' || key == 'R') {
    oscuro = color(34, 41, 155);
    claro = color(3, 15, 36);
    automatico = false; // Detener el cambio automático
    ultimoframe = 0; // Reiniciar el contador
  }

//CAMBIO AUTOMATICO
  if (key == 'a' || key == 'A') {
    coloresr();
    if (automatico) {
      automatico = false;
    } else {
      automatico = true;
      ultimoframe = frameCount; // Iniciar el conteo al activar el cambio automático
    }
  }
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    color temporal = oscuro;
    oscuro = claro;
    claro = temporal;
  } else if (mouseButton == LEFT) {
    coloresr();
  }
}


void circulos(float tamc) {
  int numcirculosX = 3;
  int numcirculosY = 3;

  for (int i = 0; i < numcirculosX; i++) {
    for (int j = 0; j < numcirculosY; j++) {

      float x = 467 + i * tamc;
      float y = 66 + j * tamc;     
      float distancia = dist(mouseX, mouseY, x, y);

      // Ajustar el tamaño
      float tamc1 = tamc;
      if (tamanos) {
        tamc1 = tamc - tamc * (distancia / (width / 2));
      }

      // ordena los colores
      int colorordenado = (i + j) % 2;

      // Determinar el color para los círculos
      color color1;
      if (colorordenado == 0) {
        color1 = oscuro;
      } else {
        color1 = claro;
      }

      fill(color1);
      circle(x, y,tamc1);
    }
  }
}

void cuadrados(int tamc) {
  int numCuadradoX = 3;
  int numCuadradoY = 3;

  for (int i = 0; i < numCuadradoX; i++) {
    for (int j = 0; j < numCuadradoY; j++) {

      // Calcular la posición en base al índice
      float x = width / 2 + i * tamc;
      float y = j * tamc;

      // Alternar colores
      int colorOrdenado = (i + j) % 2;

      color colorOriginal;
      if (colorOrdenado == 0) {
        colorOriginal = claro;
      } else {
        colorOriginal = oscuro;
      }

      // Dibujar el cuadrado
      fill(colorOriginal);
      rect(x, y, tamc, tamc);
    }
  }

}

void coloresr() {
  oscuro = color(random(255), random(255), random(255));
  claro = color(random(255), random(255), random(255));
}
