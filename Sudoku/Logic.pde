import java.util.*;

public class Logic {

  public ArrayList<ArrayList<Integer>> plano;
  private int dificuldade;

  public Logic() {
    this.dificuldade = 50;  //Dificuldade do jogo
    plano = new ArrayList();
    Random r = new Random();
    for (int i = 0; i < 9; i++) {
      plano.add(new ArrayList<Integer>(Arrays.asList(0, 0, 0, 0, 0, 0, 0, 0, 0)));
    }
    
    for (int i = 0; i < 9; i ++) {
      for (int j = 0; j < 9; j++) {
        int aux= r.nextInt(100);
        
        if(aux < dificuldade) this.addnum(r.nextInt(9)+1, i, j);
        
      }
    }
  }


  public boolean addnum(int num, int casax, int casay) {
    if (confere_quadro(num, casax, casay) && confere_linha(num, casax) && confere_coluna(num, casay)) {
      plano.get(casax).add(casay, num);
      plano.get(casax).remove(casay + 1);
      return true;
    }
    return false;
  }

  private boolean confere_quadro(int num, int casax, int casay) {
    int indl = casax / 3;
    int indc = casay / 3;
    boolean cond = true;
    for (int i = indl * 3; i < indl * 3 + 3; i++) {
      for (int j = indc * 3; j < indc* 3 + 3; j++) {
        if (this.plano.get(i).get(j) == num)
        {
          cond = false;
          break;
        }
        if (!cond) break;
      }
    }
    return cond;
  }

  private boolean confere_coluna(int num, int casay) {
    for (int i = 0; i < 9; i++) {
      if (plano.get(i).get(casay) == num) return false;
    }
    return true;
  }

  private boolean confere_linha(int num, int casax) {
    for (Integer i : plano.get(casax)) {
      if (num == i) return false;
    }
    return true;
  }


  @Override
    public String toString() {
    String r = "";
    for (ArrayList<Integer> i : plano) {
      r += i.toString() + "\n";
    }
    return r;
  }
}






//for (int i = 0; i < 9; i++){
//    noFill();
//    translate(0,0);
//    square(i*60, height - 75, 60);
//    fill(0);
//    text(char(i+49), i*60 + 30, height -50);
//}
