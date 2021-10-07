class Gas{
int sitiox;
int sitioy;
int xvia;
int yvia;
int clase;

int tiempo;
int tiempodehabilidad = 10000;


boolean recolectado;


  Gas(int ubicx, int ubicy, int posa, int posb, int tipo){
    sitiox=ubicx;
    sitioy=ubicy;
    xvia=posa;
    yvia=posb;
    clase=tipo;
    tiempo = millis();
  }
//Ubicación de los objetos gasolina  
  void lugar(){
    
    if(recolectado == false && clase==1)
    {
      image(gas2ama, sitiox, sitioy);
    }
    
    if(recolectado == false && clase ==2)
    {
      image(gas2ver, sitiox, sitioy); 
    }
  }

//Función de obtención en base a las casillas de control de los taladros  
  void obtener(){
    if(recolectado == false){
      if(a==xvia && b==yvia){
        recolectado=true;
        destruir=true; 
      }
    }
  }
  
   void obtener2(){
    if(recolectado == false){
      if(c==xvia && d==yvia){
        recolectado=true;
        destruir2=true; 
      }
    }
  }
  
//Desactivación de la habilidad después de cierto tiempo (destruir el mapa)  
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
  
    void desact2(){
    if(recolectado == true){
     int tiempopasado = millis() - tiempo;
     
     if(tiempopasado > tiempodehabilidad)
       {
        destruir2=false;
        tiempo=millis();
        recolectado=false;
       }
     }
  }
}
