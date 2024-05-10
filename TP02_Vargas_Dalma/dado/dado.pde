abstract class GameObject {
  float x, y;  // Posición del objeto en el lienzo
  
  GameObject(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  abstract void display();  // Método abstracto para mostrar el objeto
}

int caso;  // Variable para almacenar el caso actual

void setup() {
  size(400, 400);
  background(#72B9DE);  // Fondo celeste
  
  // Generar un caso aleatorio al inicio
  generarCasoAleatorio();
}

void draw() {
  fill(255, 165, 0);  // Color naranja
  rect(100, 100, 200, 200);  // Dibujar el cuadrado (dado)
  
  fill(0);  // Color negro para los puntos
  
  // Dibujar los puntos según el caso actual
  switch (caso) {
    case 1:
      // Dibujar un punto en el centro
      ellipse(200, 200, 20, 20);
      break;
    case 2:
      // Dibujar dos puntos en las esquinas superior izquierda e inferior derecha
      ellipse(150, 150, 20, 20);
      ellipse(250, 250, 20, 20);
      break;
    case 3:
      // Dibujar tres puntos en las esquinas superior izquierda, inferior derecha y centro
      ellipse(150, 150, 20, 20);
      ellipse(250, 250, 20, 20);
      ellipse(200, 200, 20, 20);
      break;
    case 4:
      // Dibujar cuatro puntos en las esquinas del dado
      ellipse(150, 150, 20, 20);
      ellipse(150, 250, 20, 20);
      ellipse(250, 150, 20, 20);
      ellipse(250, 250, 20, 20);
      break;
    case 5:
      // Dibujar cinco puntos en las esquinas del dado y en el centro
      ellipse(150, 150, 20, 20);
      ellipse(150, 250, 20, 20);
      ellipse(250, 150, 20, 20);
      ellipse(250, 250, 20, 20);
      ellipse(200, 200, 20, 20);
      break;
    case 6:
      // Dibujar seis puntos en las esquinas y en el centro de cada lado del dado
      ellipse(150, 150, 20, 20);
      ellipse(150, 200, 20, 20);
      ellipse(150, 250, 20, 20);
      ellipse(250, 150, 20, 20);
      ellipse(250, 200, 20, 20);
      ellipse(250, 250, 20, 20);
      break;
  }
}

void mousePressed() {
  // Generar un nuevo caso aleatorio cuando se presiona el mouse
  generarCasoAleatorio();
}

void generarCasoAleatorio() {
  caso = int(random(1, 7));  // Generar un número aleatorio entre 1 y 6
}
