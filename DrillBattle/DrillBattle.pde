Mapa inicial;
Drill1 drill1 = new Drill1 ();
Limites mapa = new Limites();

int[][] posx = new int[27][15];                        //Pos x de los cuadrados de hitbox 
int[][] posy = new int[27][15];                        //Pos y de los cuadrados de hitbox

  float x = 54;
  float y = 58;
  
boolean contacto;  

void setup(){
fullScreen();
inicial = new Mapa();
inicial.diseñar();
inicial.dibuj();

//inicial.update();
}

void draw(){
  drill1.movimiento();
  drill1.mostrar();
  drill1.hitbox();
  inicial.hitbox();
  mapa.prueba();
  mapa.colision();
}

void keyPressed() {
  drill1.teclaPresionada(keyCode);


}

void keyReleased() {
  drill1.teclaSoltada(keyCode);
}
