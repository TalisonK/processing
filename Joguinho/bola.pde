class Bola {

  int x;
  int y;
  int vx;
  int vy;
  int size;

  Bola(int x, int y) {

    this.x = x;
    this.y = y;
    this.vy = 5;
    this.vx = -5;
    this.size = 20;
  }
  
  int lost(){
     if(b.x <= 0){return 1;}
     if(b.x >= 1000){return 2;}
     return 0;
  }
  
  void wall(int w, int h) {
    
    if(this.y + size >= h){this.vy *= -1;}
    else if(this.y <= 0){this.vy *= -1;}
  }


  void move() {
    this.x += vx;
    this.y += vy;
  }
  
  void reset(){
    x = 500;
    y = 500;
    vx = -5;
    vy = 5;
    
  }

  void show() {
    rect(x, y, size, size);
  }
}
