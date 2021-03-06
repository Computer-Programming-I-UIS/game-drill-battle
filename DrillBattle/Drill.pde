class Drill1 {
  //Limites de movimientos
  float limder1=x+950;
  float limiz1=x+58;
  float limsu1=y+58;
  float limin1=y+500;
  
  //Boolean para activar el movimiento
  boolean derecha = false;
  boolean izquierda = false;
  boolean arriba = false;
  boolean abajo = false;
  
  //Boolean que va variando en función de si el movimiento es posible o no en las casillas adyacentes a la posición
  boolean posd;
  boolean posi;
  boolean posar;
  boolean posab;
  
  //Carga de imagenes
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
    if(derecha && movder==true && x<limder1 || derecha && destruir==true && x<limder1){
          a=a+1;
          mapa.estado_der();
          mapa.estado_abj();
          mapa.estado_izq();
          mapa.estado_arri();
          inicial.dibuj();
          posd=true;
          posi=false;
          posar=false;
          posab=false;
          x= x + 40;
          image (Drill1, x, y);
          delay(100);
    }
    
    if(abajo && movabj==true && y<limin1  || abajo && destruir==true && y<limin1){
          b=b+1;
          mapa.estado_der();
          mapa.estado_abj();
          mapa.estado_izq();
          mapa.estado_arri();
          inicial.dibuj();
          posd=false;
          posi=false;
          posar=false;
          posab=true;
          y= y + 40;
          image (Drill2, x, y);
          delay(100); 
    }
    
    if(izquierda && movizq==true && x>limiz1 || izquierda && destruir==true && x>limiz1){
          a=a-1;
          mapa.estado_izq();
          mapa.estado_abj();
          mapa.estado_der();
          mapa.estado_arri();
          inicial.dibuj();
          posd=false;
          posi=true;
          posar=false;
          posab=false;
          x= x - 40;
          image (Drill4, x, y);
          delay(100);
    }
    
    if(arriba && movarri==true && y>limsu1 || arriba && destruir==true && y>limsu1){
          b=b-1;
          mapa.estado_arri();
          mapa.estado_abj();
          mapa.estado_izq();
          mapa.estado_der();
          inicial.dibuj();
          posd=false;
          posi=false;
          posar=true;
          posab=false;
          y= y - 40;
          image (Drill3, x, y);
          delay(100);
      
    }
    
    
  }

//Detección de teclas
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

//Dibujar la posición del taladro cuando está estatico
void dibujar(){
  if(posd==true)
  {
    image (Drill1, x, y);
  }
  else if(posi==true){
    image(Drill4, x, y); 
  }
  if(posar==true)
  {
    image (Drill3, x, y);
  }
  else if(posab==true){
    image(Drill2, x, y); 
  }
}

//Adquisición de puntos al situarse en casillas conquistadas o no conquistadas mientras tenga gasolina
void puntuar(){
 if(sitio[a][b]==0 && destruir){
   sitio[a][b]=1;
   puntos1 += 1;
 }
 if(sitio[a][b]==2 && destruir){
    sitio[a][b]=1;
    puntos2 -= 1;
    puntos1 += 1;
 }
}

//Reproducir sonido al tener gasolina
void sonido(){
 if(destruir==true || destruir2==true ){
   playerdrill.play();
   if(playerdrill.isPlaying()==false){
   playerdrill.play();}
 }
 else{
   playerdrill.pause();
 }
}

void aparecer(){

  inicial.dibuj();
  image (Drill1, x, y);
}

//Observar mejor la posición al desactivar el noStroke
void hitbox(){
  fill(255,0,0,0);
  noStroke();
  rect(x,y,46,44);
}
}
