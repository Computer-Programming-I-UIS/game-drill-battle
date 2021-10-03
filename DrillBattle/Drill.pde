class Drill1 {

  float limder1=x+1248;
  float limiz1=x+58;
  float limsu1=y+58;
  float limin1=y+677;
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
      image (Drill1, x, y);
      x= x + 5;
    }}
    if(x>limiz1){
    if (izquierda) {
      inicial.dibuj();
      image (Drill4, x, y);
      x= x - 5;
    }}
    if(y>limsu1){
    if (arriba) {
      inicial.dibuj();
      image (Drill3, x, y);
      y= y - 5;
    }}
    if(y<limin1){
    if (abajo) {
      inicial.dibuj();
      image (Drill2, x, y);
      y= y + 5;
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

void hitbox(){
    rect(x,y,46,44);
}
}
