int c = 1;
int w = 600;

ArrayList<Circulo> circulos;
int i = 0;

void setup() {
  size(600, 600);


  circulos = new ArrayList();

  for (int i = 0; i < 50; i++) {
    Circulo c = new Circulo(random(20, 550), random(20, 550));
    circulos.add(c);
  }
}

void draw() {
  background(0, 0, 0);

  for ( Circulo c : circulos) {
    
    for(Circulo d : circulos){
      if(d.colide(c)){d.vx *= -1; d.vy *= -1; c.vx *= -1; c.vy *= -1;}
      
    }
    
    c.walls(w);
    if (i % 2 == 0) {
      c.move();
    } else {
      c.move();
    }
    i++;
    c.show();
  }
}
