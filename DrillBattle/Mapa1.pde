class Mapa{
int Tamx=27;
int Tamy=15;
PImage[][]Fond = new PImage[Tamx][Tamy];

  Mapa(){
    for(int i=0; i<Tamx; i++){
      for(int j=0; j<Tamy;j++)
       Fond[i][j]= loadImage("Tierra.png");
     }
    for(int i=1;i<Tamx-1;i++){
      Fond[i][0]= loadImage("TierraArr.png");}
    for(int i=1;i<Tamy-1; i++){
      Fond[0][i]= loadImage("TierraIzq.png");}
    for(int i=1;i<Tamy-1; i++){
      Fond[Tamx-1][i]= loadImage("TierraDer.png");}  
    for(int i=1;i<Tamx-1; i++){
      Fond[i][Tamy-1]= loadImage("TierraAbaj.png");}
      Fond[0][0]= loadImage("EsquinaIzqArr.png");
      Fond[0][Tamy-1]= loadImage("EsquinaIzqAbj.png");
      Fond[Tamx-1][0]= loadImage("EsquinaDerArr.png");
      Fond[Tamx-1][Tamy-1]= loadImage("EsquinaDerAbj.png");
  }
  
  void original(){
    Fond[12][7] = loadImage("Roca.png");
    Fond[13][7] = loadImage("Roca.png");
    
    for(int x=1; x<14; x++){                      //Columna derecha mayor
      Fond[24][x] = loadImage("Roca.png");}
    
    for(int x=23; x>18; x--){                     //Fila superior derecha
      Fond[x][1] = loadImage("Roca.png");}
      
    for(int x=1; x<8; x++){                       //Columna arriba medio derecha
      Fond[18][x] = loadImage("Roca.png");}
      
    for(int x=17; x>14; x--){                     //Fila derecha centro
      Fond[x][7] = loadImage("Roca.png");}
    
    for(int x=24; x>19; x--){
      Fond[x][7] = loadImage("Roca.png");}
      
    for(int x=7; x<12; x++){
      Fond[21][x] = loadImage("Roca.png");} 
      
     for(int x=10; x<16; x++){                    //Fila abajo centro
      Fond[x][11] = loadImage("Roca.png");} 
    
    for(int x=10; x<16; x++){                    //Fila arriba centro
      Fond[x][3] = loadImage("Roca.png");}
      
    for(int x=1; x<14; x++){                      //Columna mayor izquierda
      Fond[1][x] = loadImage("Roca.png");}  
    
    for(int x=1; x<8; x++){                        //Fila abajo centro izquierda
      Fond[x][13] = loadImage("Roca.png");}
      
    for(int x=7; x<14; x++){                        //Columna abajo centro izquierda
      Fond[7][x] = loadImage("Roca.png");}
      
    for(int x=8; x<11; x++){                        //Fila izquierda centro
      Fond[x][7] = loadImage("Roca.png");}
      
    for(int x=1; x<6; x++){                        //Fila centro izq centro  
      Fond[x][7] = loadImage("Roca.png");}
      
    for(int x=3; x<8; x++){                        
      Fond[4][x] = loadImage("Roca.png");} 
           
    scale(0.52);      //0.52
    {
     for(int i=0; i<Tamx;i++){
        for(int j=0; j<Tamy;j++){
         image(Fond[i][j],i*100,j*100);
        }
     }
    }
  }
}
