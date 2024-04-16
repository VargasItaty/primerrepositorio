PVector coordenadasRect;
int ancho, alto, distEntreRect;

void setup() {
  size(440, 420);
  distEntreRect = 20;
  ancho = 40;
  alto = 20;
  coordenadasRect = new PVector(distEntreRect, distEntreRect);
  background(#E8D4B0); // Color beige 
}

void draw() {
  dibujarRectangulos();
}

void dibujarRectangulos() {
  fill(255, 0, 0); // Color rojo
  noStroke(); // Sin borde
  for (float y = coordenadasRect.y; y < height; y += (alto + distEntreRect)) {
    for (float x = coordenadasRect.x; x < width; x += (ancho + distEntreRect)) {
      rect(x, y, ancho, alto);
    }
  }
}
