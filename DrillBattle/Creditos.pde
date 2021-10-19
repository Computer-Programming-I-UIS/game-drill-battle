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
 image(Credito, 50, 20); 
 if (movc==true){
 image(Credito2, 10, posc);
 image(Credito3, 10, posc2);
 image(Credito4, 20, posc3);
 
 posc= posc - 2;
 
 posc2= posc2 - 2; 
 
 posc3= posc3 - 2;

   if(posc==100){
    posc=800; 
    if(numerodecredito<7){
    numerodecredito+=1;}
   }
   if(posc2==100){
    posc2=800; 
    if(numerodecredito2<7){
    numerodecredito2+=1;}
   }
   if(posc3==100){
    posc3=800; 
    if(numerodecredito3<7){
    numerodecredito3+=1;}
   }
 }
}
