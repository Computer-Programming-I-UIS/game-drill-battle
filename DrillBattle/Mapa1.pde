class Mapa{
int Tamx=27;
int Tamy=15;
PImage[][]Fond = new PImage[Tamx][Tamy];

 
//via==true roca/ objeto destruido/ Caminar
//via==false tierra/ objeto no destruido/ No caminar

  Mapa(){
    for(int i=0; i<Tamx; i++){
      for(int j=0; j<Tamy;j++){
       Fond[i][j]= loadImage("Tierra.png");
       via[i][j]= false;}
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
  
  void diseñar(){
    Fond[12][7] = loadImage("Roca2.png");
    via[12][7] = true;
    Fond[13][7] = loadImage("Roca3.png");
    via[13][7] = true;
    
    for(int x=0; x<Tamx;x++){
      via[x][0]=false;}
    
    for(int x=0; x<Tamx;x++){
      via[x][14]=false;}
      
    for(int x=0; x<Tamy;x++){
      via[0][x]=false;}
      
    for(int x=0; x<Tamy;x++){
      via[26][x]=false;}  
    
    for(int x=1; x<14; x++){                      //Columna derecha mayor          //random(1,3)
      Fond[24][x] = loadImage("Roca"+int(random(1,7))+".png");
      via[24][x]=true;}
    
    for(int x=23; x>18; x--){                     //Fila superior derecha
      Fond[x][1] = loadImage("Roca"+int(random(1,7))+".png");
      via[x][1]=true;}
      
    for(int x=1; x<8; x++){                       //Columna arriba medio derecha
      Fond[18][x] = loadImage("Roca"+int(random(1,7))+".png");
      via[18][x]=true;}
      
    for(int x=17; x>14; x--){                     //Fila derecha centro
      Fond[x][7] = loadImage("Roca"+int(random(1,7))+".png");
      via[x][7]=true;}
    
    for(int x=24; x>19; x--){
      Fond[x][7] = loadImage("Roca"+int(random(1,7))+".png");
      via[x][7]=true;}
      
    for(int x=7; x<12; x++){
      Fond[21][x] = loadImage("Roca"+int(random(1,7))+".png");
      via[21][x]=true;} 
      
     for(int x=10; x<16; x++){                    //Fila abajo centro
      Fond[x][11] = loadImage("Roca"+int(random(1,7))+".png");
      via[x][11]=true;} 
    
    for(int x=10; x<16; x++){                    //Fila arriba centro
      Fond[x][3] = loadImage("Roca"+int(random(1,7))+".png");
      via[x][3]=true;}
      
    for(int x=1; x<14; x++){                      //Columna mayor izquierda
      Fond[1][x] = loadImage("Roca"+int(random(1,7))+".png");
      via[1][x]=true;}  
    
    for(int x=1; x<8; x++){                        //Fila abajo centro izquierda
      Fond[x][13] = loadImage("Roca"+int(random(1,7))+".png");
      via[x][13]=true;}
      
    for(int x=7; x<14; x++){                        //Columna abajo centro izquierda
      Fond[7][x] = loadImage("Roca"+int(random(1,7))+".png");
      via[7][x]=true;}
      
    for(int x=8; x<11; x++){                        //Fila izquierda centro
      Fond[x][7] = loadImage("Roca"+int(random(1,7))+".png");
      via[x][7]=true;}
      
    for(int x=1; x<6; x++){                        //Fila centro izq centro  
      Fond[x][7] = loadImage("Roca"+int(random(1,7))+".png");
      via[x][7]=true;}
      
    for(int x=3; x<8; x++){                        
      Fond[4][x] = loadImage("Roca"+int(random(1,7))+".png");
      via[4][x]=true;} 
           
   }
   
   void dibuj(){
    pushMatrix();
    scale(0.52);      //0.52
    {
     for(int i=0; i<Tamx;i++){
        for(int j=0; j<Tamy;j++){
         image(Fond[i][j],i*100,j*100);
        }
     }
    }
    popMatrix();
    //rect(via[5][1],52,100,100);
   }
   
   void hitbox(){
     for(int i=0; i<Tamx; i++){ 
      for(int j=0; j<Tamy; j++){
       if(via[i][j] == true || via[i][j] == false)
          rect(i*52,j*52,52,52);
          posx[i][j] = i*52;
          posy[i][j] = j*52;}
     }
   }
   
   void generar(){
    if(destruir == true){
      via[a][b] = true;
      Fond[a][b] = loadImage("Roca1.png");
    }
    else
      destruir=false;
   }
   
   void generar2(){
    if(destruir2 == true){
      via[c][d] = true;
      Fond[c][d] = loadImage("Roca1.png");
    }
    else
      destruir2=false;
   }
   

   
  // void terminar(){
  //  if(via[1][1]==true  && via[1][2]==true && via[1][3]==true && via[1][4]==true && via[1][5]==true && via[1][6]==true && via[1][7]==true && via[1][8]==true && via[1][9]==true && via[1][10]==true && via[1][11]==true && via[1][12]==true && via[1][13]==true && 
  //  via[2][1]==true  && via[2][2]==true && via[2][3]==true && via[2][4]==true && via[2][5]==true && via[2][6]==true && via[2][7]==true && via[2][8]==true && via[2][9]==true && via[2][10]==true && via[2][11]==true && via[2][12]==true && via[2][13]==true && 
  //  via[3][1]==true  && via[3][2]==true && via[3][3]==true && via[3][4]==true && via[3][5]==true && via[3][6]==true && via[3][7]==true && via[3][8]==true && via[3][9]==true && via[3][10]==true && via[3][11]==true && via[3][12]==true && via[3][13]==true &&
  //  
  //  via[24][13]==true)

  //}
}
