Drill1 drill1 = new Drill1 ();

void setup() {
  size(500,500);
  background (0);
 
}


void draw() {
  
  drill1.movimiento();
  drill1.mostrar();
}

void keyPressed() {
  drill1.teclaPresionada(keyCode);
}

void keyReleased() {
  drill1.teclaSoltada(keyCode);
}


class Drill1 {
  int x = 250;
  int y = 470;
  boolean derecha = false;
  boolean izquierda = false;
  boolean arriba = false;
  boolean abajo = false;
  PImage Drill1;
  PImage Drill2;
  PImage Drill3;
  PImage Drill4;
 

  void mostrar() {
    Drill1 = loadImage ("Drill 1.png");
    Drill2 = loadImage ("Drill 2.png");
    Drill3 = loadImage ("Drill 3.png");
    Drill4 = loadImage ("Drill 4.png");
    
  }
  void movimiento() {
    
    if (derecha) {
      background (0);
      image (Drill1, x, y);
      x= x + 3;
    }
    if (izquierda) {
      background (0);
      image (Drill4, x, y);
      x= x - 3;
    }
    if (arriba) {
      background (0);
      image (Drill3, x, y);
      y= y - 3;
    }
    if (abajo) {
      background (0);
      image (Drill2, x, y);
      y= y + 3;
    }
    
  }
  void teclaPresionada (int code) {
    if (code == 39 ) {  
      derecha=true;
    }
    if (code == 37) {  
      izquierda=true;
    }
    if (code == 38) {  
      arriba=true;
    }
    if (code == 40) {  
      abajo=true;
    }
  }

void teclaSoltada (int code) {
  if (code == 39) {  
    derecha=false;
  }
  if (code == 37) {  
    izquierda=false;
  }
  if (code == 38) { 
    arriba=false;
  }
  if (code == 40) {  
    abajo=false;
  }
}
}
