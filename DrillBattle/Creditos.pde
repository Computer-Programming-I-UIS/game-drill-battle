PImage Credito;
PImage Credito2;
PImage Credito3;
PImage Credito4;

int posc=800;
int posc2=1000;
int posc3=1200;

boolean movc=true;

int numerodecredito=1;
int numerodecredito2=1;
int numerodecredito3=1;

void aparecerysubir(){
  
 Credito2 = loadImage("Credito2"+int(numerodecredito)+".png");
 Credito3 = loadImage("Credito3"+int(numerodecredito2)+".png");
 Credito4 = loadImage("Credito4"+int(numerodecredito3)+".png");
 image(Credito, 50, 10); 
 if (movc==true){
 pushMatrix();
 scale(0.7);
 image(Credito2, 50, posc);
 image(Credito3, 50, posc2);
 image(Credito4, 60, posc3);
 popMatrix();
 posc= posc - 2;
 
 posc2= posc2 - 2; 
 
 posc3= posc3 - 2;

   if(posc==150){
    posc=900; 
    if(numerodecredito<7){
    numerodecredito+=1;}
   }
   if(posc2==150){
    posc2=900; 
    if(numerodecredito2<7){
    numerodecredito2+=1;}
   }
   if(posc3==150){
    posc3=900; 
    if(numerodecredito3<7){
    numerodecredito3+=1;}
   }
 }
}
