Mapa inicial;
Drill1 drill1 = new Drill1 ();
Limites mapa = new Limites();

int[][] posx = new int[27][15];                        //Pos x de los cuadrados de hitbox 
int[][] posy = new int[27][15];                        //Pos y de los cuadrados de hitbox

int a=1;
int b=1;

boolean movarri=false;
boolean movabj=false;
boolean movder=false;
boolean movizq=false;

  float x = 54;
  float y = 56;
  
boolean[][]via = new boolean[27][15];  
  
int contacto;  

void setup(){
fullScreen();
inicial = new Mapa();
inicial.diseñar();
inicial.dibuj();
drill1.mostrar();
}

void draw(){
  drill1.hitbox();
  inicial.hitbox();
  mapa.estado_abj();
  mapa.estado_der();
  mapa.estado_izq();
  mapa.estado_arri();
  drill1.movimiento();


  
}

void keyPressed() {
  drill1.hitbox();
  inicial.hitbox();
  mapa.prueba();

}

void keyReleased() {
}
