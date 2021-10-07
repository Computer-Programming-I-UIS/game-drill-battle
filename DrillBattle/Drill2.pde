class Drill2{

  float limder2=950;
  float limiz2=52;
  float limsu2=y2+58;
  float limin2=500;
  
  
  boolean derecha2 = false;
  boolean izquierda2 = false;
  boolean arriba2 = false;
  boolean abajo2 = false;
  
  boolean posd2;
  boolean posi2;
  boolean posar2;
  boolean posab2;
  
  
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
    if(key == 'r'){
        inicial.dibuj();
        image (Drill12, x2, y2);
        mapa.estado_der2();
        mapa.estado_abj2();
        mapa.estado_izq2();
        mapa.estado_arri2();
        posd2=true;
        posi2=false;
        posar2=false;
        posab2=false;
    }
    
    if(derecha2 && movder2==true && x2<limder2 ||derecha2 && destruir2==true && x2<limder2){
          c=c+1;
          mapa.estado_der2();
          mapa.estado_abj2();
          mapa.estado_izq2();
          mapa.estado_arri2();
          inicial.dibuj();
          posd2=true;
          posi2=false;
          posar2=false;
          posab2=false;
          x2= x2 + 40;
          image (Drill12, x2, y2);
          delay(100);
    }
    
    if(abajo2 && movabj2==true && y2<limin2  || abajo2 && destruir2==true && y2<limin2){
          d=d+1;
          mapa.estado_der2();
          mapa.estado_abj2();
          mapa.estado_izq2();
          mapa.estado_arri2();
          inicial.dibuj();
          posd2=false;
          posi2=false;
          posar2=false;
          posab2=true;
          y2= y2 + 40;
          image (Drill22, x2, y2);
          delay(100); 
    }
    
    if(izquierda2 && movizq2==true && x2>limiz2 || izquierda2 && destruir2==true && x2>limiz2){
          c=c-1;
          mapa.estado_izq2();
          mapa.estado_abj2();
          mapa.estado_der2();
          mapa.estado_arri2();
          inicial.dibuj();
          posd2=false;
          posi2=true;
          posar2=false;
          posab2=false;
          x2= x2 - 40;
          image (Drill42, x2, y2);
          delay(100);
    }
    
    if(arriba2 && movarri2==true && y2>limsu2 || arriba2 && destruir2==true && y2>limsu2){
          d=d-1;
          mapa.estado_arri2();
          mapa.estado_abj2();
          mapa.estado_izq2();
          mapa.estado_der2();
          inicial.dibuj();
          posd2=false;
          posi2=false;
          posar2=true;
          posab2=false;
          y2= y2 - 40;
          image (Drill32, x2, y2);
          delay(100);
    }
  }
  
    void teclaPresionada2 () {
    if (key == 'd' ) {  
      derecha2=true;
    }
    if (key == 'a') {  
      izquierda2=true;
    }
    if (key == 'w') {  
      arriba2=true;
    }
    if (key == 's') {  
      abajo2=true;
    }
  }

void teclaSoltada2 () {
  if (key == 'd') {  
    derecha2=false;
  }
  if (key == 'a') {  
    izquierda2=false;
  }
  if (key == 'w') { 
    arriba2=false;
  }
  if (key == 's') {  
    abajo2=false;
  }

}
  
  void dibujar(){
  if(posd2==true)
  {
    image (Drill12, x2, y2);
  }
  else if(posi2==true){
    image(Drill42, x2, y2); 
  }
  if(posar2==true)
  {
    image (Drill32, x2, y2);
  }
  else if(posab2==true){
    image(Drill22, x2, y2); 
  }
  }
  
 void puntuar2(){
 
   if(sitio[c][d]==0 && destruir2){
     sitio[c][d]=2;
     puntos2 += 1;
   }
 
   if(sitio[c][d]==1 && destruir){
     sitio[a][b]=2;
     puntos1 -= 1;
     puntos2 += 1;
   }
}
}
