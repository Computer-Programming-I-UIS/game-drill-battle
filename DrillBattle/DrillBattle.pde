int Tamx=27;
int Tamy=15;
PImage[][]Fond = new PImage[Tamx][Tamy];


void setup(){
fullScreen();
for(int i=0; i<Tamx; i++){
  for(int j=0; j<Tamy;j++)
   Fond[i][j]= loadImage("Tierra.png");
  }
}

void draw(){
  if(keyPressed){
  Fond[Tamx-1][Tamy-1]=loadImage("Roca.png");}
  else
  Fond[Tamx-1][Tamy-1]=loadImage("Tierra.png");
  scale(0.52);
  {
   for(int i=0; i<Tamx;i++){
     for(int j=0; j<Tamy;j++){
     image(Fond[i][j],i*100,j*100);
     }
   }
  }
}
