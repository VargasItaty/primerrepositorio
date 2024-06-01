class Personaje{
  private PVector posicion;
  private ColliderCircular collider;
  
  public Personaje(PVector posicion){
    this.posicion=posicion;
    this.collider = new ColliderCircular(50,this.posicion);
  }
  
  public void display(){
    circle(this.posicion.x,this.posicion.y,100);
  }
  
  public ColliderCircular getCollider(){
    return this.collider;
  }

}
