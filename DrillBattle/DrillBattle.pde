Mapa inicial;
Drill1 drill1 = new Drill1 ();
Limites mapa = new Limites();

int[][] posx = new int[27][15];                        //Pos x de los cuadrados de hitbox 
int[][] posy = new int[27][15];                        //Pos y de los cuadrados de hitbox

  float x = 54;
  float y = 58;
  
int[][]via = new int[27][15];  
  
int contacto;  

void setup(){
fullScreen();
inicial = new Mapa();
inicial.diseñar();
inicial.dibuj();

//inicial.update();
}

void draw(){
  drill1.hitbox();
  inicial.hitbox();
  drill1.movimiento();
  drill1.mostrar();
  mapa.prueba();
  mapa.colision();
}

void keyPressed() {
  drill1.teclaPresionada(keyCode);
  drill1.hitbox();
  inicial.hitbox();
  mapa.prueba();
  mapa.colision();

}

void keyReleased() {
  drill1.teclaSoltada(keyCode);
}
