class ColliderCircular{
  private float radio;
  private  PVector posCentro;
  
  public ColliderCircular(float radio,PVector posCentro){
    this.radio=radio;
    this.posCentro=posCentro;
  }
  public boolean validarColision(ColliderCircular otroCollider){
    boolean isCollide= false;
    
    float distancia= this.posCentro.dist(otroCollider.getPosCentro());
    println(distancia);
    if(distancia < (this.radio + otroCollider.getRadio())){
    isCollide =true;
  }
    
    return isCollide;
  }
  
  public PVector getPosCentro(){
    return this.posCentro;
  }
  
  public float getRadio(){
  return this.radio;
  }
  
  public void setPosCentro(PVector posCentro){
    this.posCentro = posCentro;
  }
}
