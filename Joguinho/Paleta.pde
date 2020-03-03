class Paleta{
  
  int x;
  int y;
  int h;
  int w;
  
  
  
  Paleta(int x, int y){
    this.x = x;
    this.y = y;
    this.w = 30;
    this.h = 100;
  }
  
  void show(){
    rect(x,y,w,h); 
  }
  
  boolean rebate(Bola b){
    if(this.x <= 30){ return this.y + this.h >= b.y && this.y <= b.y && b.x <= 30;}
    else{return this.y + this.h >= b.y && this.y <= b.y && b.x >= 950;}
    
  }
  
  void movedown(){this.y += 5;}
  
  void moveup(){this.y -= 5;}
  
}
