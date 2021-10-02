class Drill1 {
  int x = 38;
  int y = 64;
  int limder1=x+1406;
  int limiz1=x;
  int limsu1=y-15;
  int limin1=y+710;
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
    if(x<limder1){
    if (derecha){
      inicial.dibuj();
      pushMatrix();
      scale(0.85);
      image (Drill1, x, y);
      popMatrix();
      x= x + 10;
    }}
    if(x>limiz1){
    if (izquierda) {
      inicial.dibuj();
      pushMatrix();
      scale(0.85);
      image (Drill4, x, y);
      popMatrix();
      x= x - 10;
    }}
    if(y>limsu1){
    if (arriba) {
      inicial.dibuj();
      pushMatrix();
      scale(0.85);
      image (Drill3, x, y);
      popMatrix();
      y= y - 10;
    }}
    if(y<limin1){
    if (abajo) {
      inicial.dibuj();
      pushMatrix();
      scale(0.85);
      image (Drill2, x, y);
      popMatrix();
      y= y + 10;
    }}
    
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
