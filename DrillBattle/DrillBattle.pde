Mapa inicial;
Drill1 drill1 = new Drill1 ();

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
  inicial.prueba();
}

void keyPressed() {
  drill1.teclaPresionada(keyCode);
}

void keyReleased() {
  drill1.teclaSoltada(keyCode);
}
