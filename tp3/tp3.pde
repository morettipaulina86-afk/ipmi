PImage img;

boolean cambiarColor = false;

void setup() {
  size(800, 400);
  img = loadImage("18art.jpg");
}

void draw() {
  background(251);

  // Imagen de referencia
  if (img != null) {
    image(img, -10, -6, 400, 416);
  }

  // Fondo negro
  noStroke();
  fill(0);
  rect(381, 0, 420, 401);

  // Grilla
  stroke(232, 191, 117);
  strokeWeight(2);

  for (int x = -1; x < 20; x++) {
    for (int y = -1; y < 21; y++) {

      float dx = abs(x - 9);
      float dy = abs(y - 10);
      float d = max(dx, dy);

      // Colores normales o alternativos
      if (cambiarColor) {

        // Centro violeta
        if (d <= 2) {
          fill(140, 80, 255);

        // Alrededores rosa
        } else if (d <= 8) {
          fill(255, 170, 220);

        // Exterior oscuro
        } else {
          fill(20);
        }

      } else {

        // Colores originales
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

      rect(403 + x * 20, y * 19, 17, 16);
    }
  }
}

void mousePressed() {
  cambiarColor = !cambiarColor;
}
