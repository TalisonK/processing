
int cols, rows;
int scl = 20;

int w = 3000;
int h = 3000;

float flying = 0;

float[][] terrain;









void setup() {
  //size(600, 600, P3D);
  fullScreen(P3D);

  cols = w / scl;
  rows = h /  scl;
  terrain = new float[cols][rows];
  
  
}

void draw() {
  flying -= 0.03;
  
  float yoff = flying;
  for (int y = 0; y < rows; y++) {
    float xoff = 0;
    for (int x = 0; x < cols; x++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
      xoff += 0.1;
    }
    yoff += 0.1;
  }
  
  
  
  background(0);
  stroke(255);
  fill(100);
  translate(width/2, height/2);
  rotateX(7.65);
  
  
  translate(-w/2, -h/2);
  for (int y = 0; y < rows - 1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      //rect(x * scl, y * scl, scl, scl);
      vertex(x * scl, y * scl, terrain[x][y]);
      vertex(x * scl, (y + 1) * scl, terrain[x][y+1]);
    }
    endShape();
  }
}
