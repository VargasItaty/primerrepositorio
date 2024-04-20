private Shooter nave;
private Asteroide rocaEspacial;

public void setup(){
  size(800,800);
  nave = new Shooter();
  //nave.posicion = new PVector(width/2,height/2);
  //nave.velocidad = new PVector(10,10);
  nave.setPosicion(new PVector(width/2,height/2));
  nave.setVelocidad(new PVector(10,10));

  rocaEspacial = new Asteroide(new PVector(width/2.0),new PVector(0,10));
  
}

public void draw(){
  background(0);
  nave.dibujar();
  actualizarVelocidadNave();
  rocaEspacial.dibujar();
  rocaEspacial.mover();
}

public void keyPressed(){
  if(key=='d'){
    nave.mover(1);
  }
  if(key=='a'){
    nave.mover(0);
  }
  if(key=='w') {
    nave.mover(2);
  }
  if(key=='s'){
    nave.mover(3);
  }
  
}

public void actualizarVelocidadNave(){
  if(nave.getPosicion().x>(width/2)){
    nave.getVelocidad().x=30;
  }else{
     nave.getVelocidad().x=10;

  }
}
  
    
