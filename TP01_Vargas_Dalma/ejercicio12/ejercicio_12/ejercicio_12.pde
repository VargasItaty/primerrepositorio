String texto_consola= " escribe tu nombre:";

String nombre= " Dalma Vargas";
void setup(){
  size(400, 200);
   println(texto_consola);
}

void draw() {
  background(#000000);
  textAlign(CENTER, CENTER);
  textSize(40);
  fill(#7DF7DE);
  text( "hola," + nombre, 200, 100);
}
   
  
