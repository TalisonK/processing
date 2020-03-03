Paleta paletad= new Paleta(1000-30, 100);
Paleta paletae= new Paleta(0, 100);
Bola b = new Bola(500, 500);

int pontos1 = 0, pontos2 = 0;

void setup() {
  size(1000, 600);
}

int lost = 0;
void draw() {
  background(0);
  stroke(255);
  line(500, 0, 500, 600);
  if(paletae.rebate(b)){
    pontos1 ++;
    b.vx *= -1; 
  }
  else if(paletad.rebate(b)){
    pontos2++;
    b.vx *= -1;
  }
  //frameRate(5);
  lost = b.lost();
  if(lost == 1){pontos1++;b.reset();}
  if(lost == 2){pontos2++;b.reset();}
  b.wall(1000, 600);
  b.move();
  b.show();
  paletad.show();
  paletae.show();
}

void keyPressed() {
  int keyIndex = -1;
  if (key == 's' || key == 'S') {
    paletae.movedown();
  } else if (key == 'w' || key == 'W') {
    paletae.moveup();
  }


  if (key == 'l' || key == 'L') {
    paletad.movedown();
  } else if (key == 'o' || key == 'O') {
    paletad.moveup();
  }
}
