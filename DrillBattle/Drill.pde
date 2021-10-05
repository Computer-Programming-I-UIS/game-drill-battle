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
    if(keyPressed)
    switch(keyCode){
       case SHIFT:
       {
        inicial.dibuj();
        image (Drill1, x, y);
        mapa.estado_der();
        mapa.estado_abj();
        mapa.estado_izq();
        mapa.estado_arri();
        break;
       }
       case RIGHT:
       {
        if(movder==true && x<limder1){
          a=a+1;
          mapa.estado_der();
          mapa.estado_abj();
          mapa.estado_izq();
          mapa.estado_arri();
          inicial.dibuj();
          x= x + 52;
          image (Drill1, x, y);
          delay(100);
          break;}
       }
       case DOWN:
       {
         if(movabj==true && y<limin1){
          b=b+1;
          mapa.estado_der();
          mapa.estado_abj();
          mapa.estado_izq();
          mapa.estado_arri();
          inicial.dibuj();
          y= y + 52;
          image (Drill2, x, y);
          delay(100);  
          break;}
       }
       case LEFT:
       {
         if(movizq==true && x>limiz1){
          a=a-1;
          mapa.estado_izq();
          mapa.estado_abj();
          mapa.estado_der();
          mapa.estado_arri();
          inicial.dibuj();
          x= x - 52;
          image (Drill4, x, y);
          delay(100);
          break;} 
       }
       case UP:
       {
         if(movarri==true && y>limsu1){
          b=b-1;
          mapa.estado_arri();
          mapa.estado_abj();
          mapa.estado_izq();
          mapa.estado_der();
          inicial.dibuj();
          y= y - 52;
          image (Drill3, x, y);
          delay(100);
          break;} 
       }
    }
  }

 //Probablemente no utilizar 
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
  fill(255,0,0,0);
  noStroke();
  rect(x,y,46,44);
}
}
