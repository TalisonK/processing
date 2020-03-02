
int c = 1;
int w = 1000;
int h = 1000;


ArrayList<Circulo> circulos;


void setup() {
  size(1000, 1000);


  circulos = new ArrayList();

  for (int i = 0; i < 50; i++) {
    Circulo c = new Circulo(500, 500);
    circulos.add(c);
  }
}
int i = 0;

void draw() {
  background(0, 0, 0);

  for ( Circulo c : circulos) {
    c.walls();
    if (i % 2 == 0) {
      c.move();
    } else {
      c.move();
    }
    i++;
    c.show();
  }
}
