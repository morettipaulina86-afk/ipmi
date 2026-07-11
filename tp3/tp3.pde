/*
 * Paulina Moretti
 * Comisión 3
 * Legajo: 127-004/3
 */
 /*link del video: https://youtu.be/VKFGLzQ5g1M*/

PImage img;

boolean cambiarColor = false;

void setup() {
  size(800, 400);
  img = loadImage("18art.jpg");
}

void draw() {
  background(251);

  // imagen de referencia
  if (img != null) {
    image(img, -10, -6, 400, 416);
  }

  // fondo negro
  noStroke();
  fill(0);
  rect(381, 0, 420, 401);

  pushMatrix();
  translate(0, 1);
  rotate(0);
  dibujarGrilla(403, 0);
  popMatrix();
}

// Función propia con parámetros que NO retorna valor
void dibujarGrilla(int inicioX, int inicioY) {

  stroke(232, 191, 117);
  strokeWeight(2);

  for (int x = -1; x < 20; x++) {
    for (int y = -1; y < 21; y++) {

      float d = calcularDistancia(x, y);

      if (cambiarColor) {

        if (d <= 2) {
          fill(140, 80, 255);
        } else if (d <= 8) {
          fill(255, 170, 220);
        } else {
          fill(20);
        }

      } else {

        if (d <= 2) {
          fill(40);
        } else if (d <= 7) {
          fill(255);
        } else if (d <= 8) {
          fill(142);
        } else {
          fill(20);
        }
      }

      rect(inicioX + x * 20, inicioY + y * 19, 17, 16);
    }
  }
}

// Función propia con parámetros que RETORNA un valor
float calcularDistancia(int x, int y) {

 
  float distancia = dist(x, y, 9, 10);

 
  float dx = abs(x - 9);
  float dy = abs(y - 10);

  return max(dx, dy);
}

void mousePressed() {
  cambiarColor = !cambiarColor;
}

// Reiniciar el programa
void keyPressed() {
  if (key == 'r' || key == 'R') {
    cambiarColor = false;
  }
}
