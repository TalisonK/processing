class Bloco{
  
  double x;
  double y;
  double w;
  double v;
  double m;
  
  Bloco(double x, double w, double v, double m){
    this.x = x;
    this.y = height - w;
    this.w = w;
    this.v = v;
    this.m = m;
  }
  
  boolean parede(){
    if(this.x <= -280){
      this.v *= -1;
      return true;
    }
    return false;
  }
  
  void movimento(){x += v;}
  
  boolean colide(Bloco other){
    return !(this.x + this.w < other.x || this.x > other.w + other.x);
  }
  
  void show(){rect((float)x, (float)y, (float)w, (float)w);}
  
  double momentum(Bloco other){
     double somaM = this.m + other.m;
     double aux = (this.m - other.m) / somaM * this.v;
     aux += (2 * other.m / somaM) * other.v;
     return aux;
  }
  
}
