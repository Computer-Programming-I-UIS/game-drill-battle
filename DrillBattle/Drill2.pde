class Drill2{

  float limder1=x2+1248;
  float limiz1=x2+58;
  float limsu1=y2+58;
  float limin1=y2+677;
  
  
  boolean derecha = false;
  boolean izquierda = false;
  boolean arriba = false;
  boolean abajo = false;
  
  boolean posd;
  boolean posi;
  boolean posar;
  boolean posab;
  
  
  PImage Drill12;
  PImage Drill22;
  PImage Drill32;
  PImage Drill42;
 
  
  void mostrar() {
    Drill12 = loadImage ("Drill 12.png");
    Drill22 = loadImage ("Drill 22.png");
    Drill32 = loadImage ("Drill 32.png");
    Drill42 = loadImage ("Drill 42.png");
    
  }
  void movimiento() {
    if(keyPressed)
    switch(key){
       case '<':
       {
        inicial.dibuj();
        image (Drill12, x2, y2);
        mapa.estado_der2();
        mapa.estado_abj2();
        mapa.estado_izq2();
        mapa.estado_arri2();
        break;
       }
       case 'd':
       {
        if(movder2==true && x<limder1 || destruir==true && x<limder1){
          c=c+1;
          mapa.estado_der2();
          mapa.estado_abj2();
          mapa.estado_izq2();
          mapa.estado_arri2();
          inicial.dibuj();
          posd=true;
          posi=false;
          posar=false;
          posab=false;
          x2= x2 + 52;
          image (Drill12, x2, y2);
          delay(100);
          break;}
       }
       case 's':
       {
         if(movabj2==true && y<limin1  || destruir==true && y<limin1){
          d=d+1;
          mapa.estado_der2();
          mapa.estado_abj2();
          mapa.estado_izq2();
          mapa.estado_arri2();
          inicial.dibuj();
          posd=false;
          posi=false;
          posar=false;
          posab=true;
          y2= y2 + 52;
          image (Drill22, x2, y2);
          delay(100);  
          break;}
       }
       case 'a':
       {
         if(movizq2==true   || destruir==true  ){
          c=c-1;
          mapa.estado_izq2();
          mapa.estado_abj2();
          mapa.estado_der2();
          mapa.estado_arri2();
          inicial.dibuj();
          posd=false;
          posi=true;
          posar=false;
          posab=false;
          x2= x2 - 52;
          image (Drill42, x2, y2);
          delay(100);
          break;} 
       }
       case 'w':
       {
         if(movarri2==true && y>limsu1 || destruir==true && y>limsu1){
          d=d-1;
          mapa.estado_arri2();
          mapa.estado_abj2();
          mapa.estado_izq2();
          mapa.estado_der2();
          inicial.dibuj();
          posd=false;
          posi=false;
          posar=true;
          posab=false;
          y2= y2 - 52;
          image (Drill32, x2, y2);
          delay(100);
          break;} 
       }
    }
  }
  
  void dibujar(){
  if(posd==true)
  {
    image (Drill12, x2, y2);
  }
  else if(posi==true){
    image(Drill42, x2, y2); 
  }
  if(posar==true)
  {
    image (Drill32, x2, y2);
  }
  else if(posab==true){
    image(Drill22, x2, y2); 
  }
//  else{
//    image (Drill1, x, y);
//  }
}
}
