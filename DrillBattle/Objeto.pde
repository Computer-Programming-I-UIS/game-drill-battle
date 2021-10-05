class Gas{
int sitiox;
int sitioy;
int xvia;
int yvia;

int tiempo;
int tiempodehabilidad = 10000;


boolean recolectado;

  Gas(int ubicx, int ubicy, int posa, int posb){
    sitiox=ubicx;
    sitioy=ubicy;
    xvia=posa;
    yvia=posb;
    tiempo = millis();
  }
  
  void lugar(){
    
    if(recolectado == false)
    {
      pushMatrix();
      scale(0.14);
      image(gas2, sitiox*7.14, sitioy*7.14);
      //ellipseMode(CORNER);
      //ellipse(sitiox, sitioy, 52, 52);
      popMatrix();
    }
  }
  
  void obtener(){
    if(recolectado == false){
      if(a==xvia && b==yvia){
        recolectado=true;
        destruir=true; 
      }
    }
  }
  
  void desact(){
    if(recolectado == true){
     int tiempopasado = millis() - tiempo;
     
     if(tiempopasado > tiempodehabilidad)
       {
        destruir=false;
        tiempo=millis();
        recolectado=false;
       }
     }
  }
  
}
