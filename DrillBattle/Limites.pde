class Limites{
 
  void colision(){

     if(via[1][2]==0){
      if(x > (posx[1][2]+52)){
       contacto=0;
       }
      else if((x+46) < posx[1][2]){
        contacto=0;
       }
      else if(y > (posy[1][2]+52)){
        contacto=0; 
       }
      else if((y+44) < posy[1][2]){
        contacto=0;
       }
      else
        contacto=2;
    }
  }
  
  void prueba(){ 
   if(contacto == 2){
   x=x-4;}
  }
}
