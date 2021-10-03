class Limites{
 
  void colision(){
    if(x > (posx[3][2]+52)){
     contacto=false;
     }
    else if((x+46) < posx[3][2]){
      contacto=false;
     }
    else if(y > (posy[3][2]+52)){
      contacto=false; 
     }
    else if((y+44) < posy[3][2]){
      contacto=false;
     }
    else
      contacto=true;
  }
  
  void prueba(){ 
   if(contacto)
   rect(500,500,100,100);
   else
   rect(200,500,100,100);  
  }
}
