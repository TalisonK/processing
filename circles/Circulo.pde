class Circulo {

  float x;
  float y;
  float vx;
  float vy = 0;
  int d;


  Circulo(float x, float y) {

    this.x = x;
    this.y = y;
    this.d = 10;
    this.vx = random(-5.0, 5.0);
    this.vy = random(-5.0, 5.0);
  }


  void show() {
    stroke(255);
    strokeWeight(3);
    fill(0);
    ellipse(x, y, d, d);
  }

  void increase() {
    d++;
  }

  void colide(Circulo c){
    
  }


  void walls() {
    if (this.x <= 0 || this.x + d >= 1000) {
      this.vx *= -1;
    }
    if (this.y <= 0 || this.y + d >= 1000) {
      this.vy *= -1;
    }
  }


  void move() {
    this.x += vx;
    this.y += vy;
  }
}
