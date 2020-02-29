int numeros = 1;
int massa = 100;
final double timeStep = 1;


Bloco bloco1 = new Bloco(150, 30, 0, 1);
Bloco bloco2 = new Bloco(300, 30, -(5/timeStep), pow(massa, numeros - 1));
int mem = 0;
long contador = 0;
void setup() {
  size(1000, 400);
} 

void draw() {
  background(255);
  stroke(30);
  strokeWeight(100);
  line(0, 350, 1000, 350);
  
  stroke(30);
  strokeWeight(23);
  line(6, 0, 6, 400);
  
  stroke(2);
  strokeWeight(1);
  translate(300, 200);
  for ( int i = 0; i < timeStep; i++) {
    if (bloco1.colide(bloco2)) {
      final double v1 = bloco1.momentum(bloco2);
      final double v2 = bloco2.momentum(bloco1);
      bloco1.v = v1;
      bloco2.v = v2;
      mem = 1;
      contador++;
    }

    if (bloco1.parede()) {
      mem = 1; 
      contador++;
    }
    bloco1.movimento();
    bloco2.movimento();
  }
  bloco1.show();
  bloco2.show();
  if (mem == 1) {
    println("\n\n\n\n\n\n\n\n" + contador);
    mem = 0;
  }
}
