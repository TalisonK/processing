void setup() {
  PFont f;
  // Create the font
  f = createFont("DejaVu Sans", 40);
  textFont(f);
  textAlign(CENTER, CENTER);
  size(550, 560);
}

Logic l = new Logic();


int casay = 0;
int casax = 0;

void draw() {

  background(255);

  //quadrados do jogo
  translate(2, 2);
  noFill();
  stroke(0);
  strokeWeight(1);
  for (int j = 0; j < 9; j++) {
    for (int i = 0; i < 9; i++) {
      square(i*60, j*60, 60);
    }
  }
  strokeWeight(3);
  noFill();
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      square(j*180, i*180, 180);
    }
  }

  //numeros
  translate(0, 0);

  for (int j = 0; j < 9; j++) {
    for (int i = 0; i < 9; i++) {
      fill(0);
      text(l.plano.get(j).get(i), i*60 + 30, j*60+30);
    }
  }



  //seleçao
  translate(0, 0);
  noFill();
  stroke(255, 0, 0);
  square(casay + 3, casax + 3, 55);
  //println(casax/60, casay/60);
}

void keyPressed()
{
  if (key >= char(49) && key <= char(49+9)) {
    l.addnum(key-48,casax/60,casay/60);
  } else {
    if (keyCode == UP || key == 'w') {
      if (casax >= 60) casax -= 60;
    } else if (keyCode == LEFT || key == 'a') {
      if (casay >= 60) casay -= 60;
    } else if (keyCode == RIGHT || key == 'd') {
      if (casay < 480) casay += 60;
    } else if (keyCode == DOWN || key == 's') {
      if (casax < 480) casax += 60;
    }
  }
}
