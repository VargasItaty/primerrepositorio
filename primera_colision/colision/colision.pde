private Personaje p;
private Enemigo e;
void setup(){
  size(600,600);
  p= new Personaje (new PVector(width/2,height/2));
  e= new  Enemigo(new PVector(100,100));
}

void draw(){
  background(0);
  p.display();
  e.display();
  e.setPosicion(new PVector(mouseX,mouseY));
  e.atacar(p);
}
