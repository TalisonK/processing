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
    strokeWeight(1);
    fill(0);
    ellipse(x, y, d, d);
  }

  void increase() {
    d++;
  }

  boolean colide(Circulo c){
    double somax = this.x - c.x;
    double somay = this.y - c.y;
    double distancia = Math.sqrt(somax * somax + somay * somay);
    
    return (distancia < this.d + c.d);
    
  }

  void walls(int w) {
    if (this.x <= 0 || this.x + d >= w) {
      this.vx *= -1;
    }
    if (this.y <= 0 || this.y + d >= w) {
      this.vy *= -1;
    }
  }


  void move() {
    this.x += vx;
    this.y += vy;
  }
}
