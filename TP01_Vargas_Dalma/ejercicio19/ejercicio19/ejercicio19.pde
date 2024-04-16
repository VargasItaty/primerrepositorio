float lineaY; // Coordenada y de la línea
float elipseY; // Coordenada y de la elipse
int direccion = 1; // Dirección de movimiento de la línea (1 para abajo, -1 para arriba)

void setup() {
  size(600, 400);
  lineaY = 0; // Comienza desde la parte superior del lienzo
  elipseY = lineaY + 40; // La elipse comienza 40 píxeles debajo de la línea
}

void draw() {
  // Actualiza la posición de la línea
  lineaY += 1 * direccion; // Incrementa o decrementa la posición de la línea según la dirección
  
  // Si la línea alcanza el borde inferior o superior del lienzo, cambia la dirección
  if (lineaY >= height || lineaY <= 0) {
    direccion *= -1; // Invierte la dirección
  }
  
  // Dibuja la línea
  background(0); // Fondo negro
  stroke(255); // Color blanco para la línea
  line(0, lineaY, width, lineaY); // Dibuja la línea
  
  // Dibuja la elipse
  fill(255); // Color blanco para la elipse
  noStroke(); // Sin borde para la elipse
  ellipse(width/2, elipseY, 80, 80); // Dibuja la elipse en el punto medio de la línea
  
  // Actualiza la posición de la elipse según la posición de la línea
  elipseY = lineaY + 40; // La elipse siempre se mantiene a 40 píxeles por debajo de la línea
}
