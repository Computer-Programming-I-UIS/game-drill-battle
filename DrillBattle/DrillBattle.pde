int Tamx=18;
int Tamy=10;
PImage[][]Fond = new PImage[Tamx][Tamy];


void setup(){
fullScreen();
for(int i=0; i<Tamx; i++){
  for(int j=0; j<Tamy;j++)
   Fond[i][j]= loadImage("Tierra.png");
  }
}

void draw(){
  scale(0.77);
  {
   for(int i=0; i<Tamx;i++){
     for(int j=0; j<Tamy;j++){
     image(Fond[i][j],i*100,j*100);
     }
   }
  }
}
