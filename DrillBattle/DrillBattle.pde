import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;

String gameState;

Mapa inicial;
Drill1 drill1 = new Drill1 ();
Drill2 drill2 = new Drill2();
Limites mapa = new Limites();
Gas objeto1 = new Gas(208, 156, 4, 3);
Gas objeto2 = new Gas(364, 676, 7, 13);

PImage gas2;

int[][] posx = new int[27][15];                        //Pos x de los cuadrados de hitbox 
int[][] posy = new int[27][15];                        //Pos y de los cuadrados de hitbox

int a=1;
int b=1;

boolean movarri=false;
boolean movabj=false;
boolean movder=false;
boolean movizq=false;

boolean movarri2=false;
boolean movabj2=false;
boolean movder2=false;
boolean movizq2=false;

boolean destruir=false;

  float x = 54;
  float y = 56;
  
  float x2=1248;
  float y2=676;
  
  int c=24;
  int d=13;
  
boolean[][]via = new boolean[27][15];  
  
int contacto;  

void setup(){
fullScreen();
gameState = "START";
minim = new Minim (this);
player = minim.loadFile ("Theme-1.wav");
player2 = minim.loadFile ("Theme-2.wav");
player3 = minim.loadFile ("Theme-3.wav");
gas2 = loadImage("SeekPng.com_esfera-png_2205701.png");
inicial = new Mapa();
inicial.diseñar();
inicial.dibuj();
drill1.mostrar();
drill2.mostrar();
background(0);
}

void draw(){
  if (gameState == "START") {
    startGame ();
  } else if (gameState == "PLAY") {
    playGame ();
  } else if (gameState == "WIN") {
    winGame();
  }
  
}

void startGame () {
  player.play();
  textAlign (CENTER);
  textSize (18);
  fill (255);
  text ("¡Haz click donde sea para jugar!", width/2, height/2);
  textSize (14);
  fill (255);
  text ("Derrota a tu oponente para ganar", width/2, height/2 + 30 );
  if (mousePressed == true) {
    gameState = "PLAY";
    player.pause();
    inicial.dibuj();
  }
}

void playGame () {
  player2.play();
  drill1.hitbox();
  inicial.hitbox();
  mapa.estado_abj();
  mapa.estado_der();
  mapa.estado_izq();
  mapa.estado_arri();
  drill1.movimiento();
  drill1.dibujar();
  drill2.movimiento();
  drill2.dibujar();
  drill1.dibujar();
  objeto1.lugar();
  objeto1.obtener();
  objeto1.desact();
  objeto2.lugar();
  objeto2.obtener();
  objeto2.desact();
  inicial.generar();
}

void winGame () {
  player3.play();
}

void keyPressed() {
  drill1.hitbox();
  inicial.hitbox();
  mapa.prueba();

}

void keyReleased() {
}
