float r = 350;

double total = 0;
double circle = 0;

double record_PI = 0;

void setup() {
  size(700, 700);
  background(0);
  translate(width/2, height/2);

  stroke(255);
  strokeWeight(4);
  noFill();
  rectMode(CENTER);
  ellipse(0, 0, r*2, r*2);
  rect(0, 0, r*2, r*2);
}



void draw() {

  translate(width/2, height/2);
  for (int i= 0; i < 100000; i++) { 
    float x = random(-r, r);
    float y = random(-r, r);
    total++;
    double d = dist(0, 0, x, y);
    if (d < r) {
      stroke(0, 255, 0);
      circle++;
    } else {
      stroke(255, 0, 0);
    }
    strokeWeight(0.001);
    point(x, y);
    double pi = 4 * (circle / total);
    double recordDiff = Math.abs(Math.PI - record_PI);
    double diff = Math.abs(Math.PI - pi);
    if (diff < recordDiff) {
      recordDiff = diff;
      record_PI = pi;
      println("atual: " + record_PI);
      println("---------------------------");
      println("certo: " + Math.PI + "\n\n");
    }
  }
}
