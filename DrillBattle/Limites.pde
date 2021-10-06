class Limites{
//Probando los valores cercanos  
  void prueba(){ 
   if(mouseButton==LEFT)
   print(via[a+1][b]);
   else
   print();
  }
  
 ///////////////////////////////////////////// 
  
  void estado_der(){
   if(via[a+1][b]==true)
     movder=true;
   else
     movder=false;
  }
  void estado_izq(){
   if(via[a-1][b]==true)
     movizq=true;
   else
     movizq=false;
  }
  void estado_arri(){
   if(via[a][b-1]==true)
     movarri=true;
   else
     movarri=false;
  }
  void estado_abj(){
   if(via[a][b+1]==true)
     movabj=true;
   else
     movabj=false; 
   }
   
 
 ///////////////////////////////////////////// 
   
   void estado_der2(){
   if(via[c+1][d]==true)
     movder2=true;
   else
     movder2=false;
  }
  void estado_izq2(){
   if(via[c-1][d]==true)
     movizq2=true;
   else
     movizq2=false;
  }
  void estado_arri2(){
   if(via[c][d-1]==true)
     movarri2=true;
   else
     movarri2=false;
  }
  void estado_abj2(){
   if(via[c][d+1]==true)
     movabj2=true;
   else
     movabj2=false; 
   }
}
