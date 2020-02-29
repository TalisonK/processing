float r1 = 200;
float r2 = 200;
float m1 = 30;
float m2 = 50;
float a1 = PI/2;
float a2 = PI/2;
float a1v = 0;
float a2v = 0;
float g = 1;
float px2 = 0;
float py2 = 0;


PGraphics canvas;

void setup(){
  size(1000, 600);
  canvas = createGraphics(1000, 600);
  canvas.beginDraw();
  canvas.background(255);
  canvas. endDraw();
  
}


void draw(){
  
  float num1 = -g * (2 * m1 + m2) * sin(a1);
  float num2 = -m2 * g * sin(a1- 2*a2);
  float num3 = -2*sin(a1-a2)*m2;
  float num4 = a2v * a2v * r2 + a1v * a1v * r1 * cos(a1 - a2);
  float deno = r1 * (2 * m1 + m2 - m2 * cos(2 * a1 - 2 * a2 ));
  float a1a = (num1 + num2 + num3 * num4) / deno;
  
  num1 = 2 * sin(a1-a2);
  num2 = (a1v * a1v * r1 * (m1 + m2));
  num3 = g * (m1 + m2) * cos(a1);
  num4 = a2v * a2v * r2 * m2 * cos(a1-a2);
  deno = r2 * (2 * m1 + m2 - m2 * cos(2 * a1 - 2 * a2 ));
  
  float a2a = (num1 * (num2  + num3 + num4) ) / deno;
  
  //background(255);
  image(canvas, 0, 0);
  stroke(0);
  strokeWeight(2);
  
  translate(500, 50);
  
  float x1 = r1 * sin(a1);
  float y1 = r1 * cos(a1);
  
  float x2 = x1 + r2 * sin(a2);
  float y2 = y1 + r2 * cos(a2);
  
  line(0, 0, x1, y1);
  fill(0);
  ellipse(x1, y1, m1, m1);
  
  line(x1, y1, x2, y2);
  fill(0);
  ellipse(x2, y2, m2, m2);
  
  a1v += a1a;
  a2v += a2a;
  a1 += a1v;
  a2 += a2v;
  
  a1v *= 0.999;
  a2v *= 0.999;
  
  
  canvas.beginDraw();
  canvas.translate(500, 50);
  canvas.strokeWeight(1);
  canvas.stroke(0);
  if (frameCount > 2){canvas.line(px2, py2, x2, y2);}
  canvas. endDraw();
  
  px2 = x2;
  py2 = y2;
  
}
