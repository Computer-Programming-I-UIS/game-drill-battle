/*********************************

Autores: Jose Félix Algarín Cotes
         Christian Camilo Ellis Jiménez



DrillBattle:  Juego basado en la idea de Digger (1983) pero adaptado en el enfoque pvp
              en el que se tiene que disputar el mayor domino del territorio posible,
              el jugador que primero alcance 150 puntos resultará como vencedor.
********************************/
//Creacion de datos de sonido
import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;
AudioPlayer player4;
AudioPlayer playerdrill;

//Botones de los menus
boolean botonjuego = false;
int x4 = 493;
int y4 = 430;
int w = 100;
int h = 30;

boolean botoninstruccion = false;
int n = 440;
int o = 490;
int p = 200;
int q = 30;

boolean botonplay = false;
int e = 800;
int f = 50;
int g = 150;
int i = 30;

boolean botonreturn = false;
int j = 485;
int k = 330;
int l = 150;
int m = 30;


//Selector de estado
String gameState;


//Datos de puntuación
int[][] sitio= new int[27][15];
int puntos1=0;
int puntos2=0;


//Inializacion de clases mapa, limites, taladros y objetos
Mapa inicial;
Drill1 drill1 = new Drill1 ();
Drill2 drill2 = new Drill2();
Limites mapa = new Limites();
Gas objeto1 = new Gas(160, 120, 4, 3,1);
Gas objeto2 = new Gas(280, 520, 7, 13, 1);
Gas objeto3 = new Gas(720, 40, 18, 1, 2);
Gas objeto4 = new Gas(840, 440, 21, 11, 2);

//Diseño objetos gasolina
PImage gas2ama;
PImage gas2ver;

int[][] posx = new int[27][15];                        //Pos x de los cuadrados de hitbox 
int[][] posy = new int[27][15];                        //Pos y de los cuadrados de hitbox

//Controladores de posición de taladro amarillo
int a=1;
int b=1;

//Permisos de movimiento taladro amarillo
boolean movarri=false;
boolean movabj=false;
boolean movder=false;
boolean movizq=false;

//Permisos de movimiento taladro verde
boolean movarri2=false;
boolean movabj2=false;
boolean movder2=false;
boolean movizq2=false;

//Permisos de destrucción taladros
boolean destruir=false;
boolean destruir2=false;

//Posicion inicial taladro 1
  float x = 38;
  float y = 42;
  
//Posicion inicial taladro 2  
  float x2=960;
  float y2=520;

//Controlador de posicion taladro verde
  int c=24;
  int d=13;
 
//Estado de las casillas  
boolean[][]via = new boolean[27][15];  

//Fondo de puntuaciones y menus
PImage fondo;
PImage menu;
PImage instrucciones;
PImage victoria;

//Textos
PFont punt;
PFont jugar;
PFont instruccion;
PFont juego;
PFont salir;
PFont juegodenuevo;

int contacto;  

void setup(){
size(1070,700);
//Estado inicial

gameState = "START";

//Inicializar sonidos

minim = new Minim (this);
player = minim.loadFile ("Theme-1.wav");
player2 = minim.loadFile ("Theme-2.wav");
player3 = minim.loadFile ("Theme-3.wav");
player4 = minim.loadFile ("Theme-4.wav");
playerdrill= minim.loadFile("Taladro.mp3");

//Cargar imagenes

gas2ama = loadImage("gas1.png");
gas2ver = loadImage("gas2.png");
fondo = loadImage("Fondo.jpeg");
menu = loadImage ("menu.jpeg");
instrucciones = loadImage ("instrucciones.jpeg");
victoria = loadImage ("victoria.jpeg");

//Cargar fuentes

punt = createFont("orbitron-black.otf", 30);
jugar = createFont ("orbitron-black.otf", 14);
instruccion = createFont ("orbitron-black.otf", 14);
juego = createFont ("orbitron-black.otf", 14);
salir = createFont ("orbitron-black.otf", 18);
juegodenuevo = createFont ("orbitron-black.otf", 12);

//Cargar datos del mapa 1

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
  } else if (gameState == "INSTRUCCION") {
    instruccion();
  }

}

void startGame () {
  if(!player.isPlaying()){
  player.loop();}
  image (menu, 0, 0);
  if (botonjuego) {
    
    player.pause();
    inicial.dibuj();
    drill2.dibujar();
    drill1.dibujar();
    gameState = "PLAY";
  }
  fill (100, 30, 22);
  rect (x4, y4, w, h);
  fill (255);
  textFont(jugar);
  text ("JUGAR", 515, 449);
  
  if (botoninstruccion) {
    gameState = "INSTRUCCION";
    player.pause();
  }
  fill (100, 30, 22);
  rect (n, o, p, q);
  fill (255);
  textFont(instruccion);
  text ("INSTRUCCIONES", 475, 510);

  fill (255);
  textFont(salir);
  text ("Para salir del juego presiona la tecla ESC", 330, 600);
}

void playGame () {
   if(!player2.isPlaying()){
   player2.loop();}

  
  drill1.hitbox();
  inicial.hitbox();
  mapa.estado_abj();
  mapa.estado_der();
  mapa.estado_izq();
  mapa.estado_arri();
  
  //Funciones del taladro
  drill1.movimiento();
  drill2.movimiento();
  drill2.dibujar();
  drill1.dibujar();
  drill1.puntuar();
  drill2.puntuar2();
  drill1.sonido();

  //Funciones de los objetos
  objeto1.lugar();
  objeto1.obtener();
  objeto1.desact();
  objeto2.lugar();
  objeto2.obtener();
  objeto2.desact();
  objeto3.lugar();
  objeto3.obtener2();
  objeto3.desact2();
  objeto4.lugar();
  objeto4.obtener2();
  objeto4.desact2();
  
  //Funciones del mapa
  inicial.generar();
  inicial.generar2();
  inicial.terminar();
  inicial.puntuaciones();
}

void winGame () {
  image(victoria, 0, 0);
  if(!player4.isPlaying()){
  player4.loop();}
  if (botonreturn) {
    ///////////////////////////////////////////////////////
    puntos1=0;
    puntos2=0;
    a=1;
    b=1;
 
    x = 38;
    y = 42;

    x2=960;
    y2=520;

    c=24;
    d=13;
    
    inicial.reinicio(); 
    
    inicial.diseñar();
    inicial.dibuj();
    drill1.mostrar();
    drill2.mostrar();
    
     
    gameState = "PLAY";
    player4.pause();
    botonreturn=false;
  }
  fill (100, 30, 22);
  rect (j, k, l, m);
  fill (255);
  textFont(juegodenuevo);
  text ("VOLVER A JUGAR", 498, 350);
}

void instruccion() {
  image (instrucciones, 0, 0);
  if(!player3.isPlaying()){
  player3.loop();}
  if (botonplay) {
    gameState = "PLAY";
    player3.pause();
    inicial.dibuj();
    drill1.aparecer();
    drill2.dibujar();
    drill1.dibujar();
    
  }
  fill (100, 30, 22);
  rect (e, f, g, i);
  fill (255);
  textFont(juego);
  text ("IR AL JUEGO", 825, 70);
}


//Funciones de controles
void keyPressed() {  
  drill1.teclaPresionada(keyCode);
  drill2.teclaPresionada2();
  drill1.hitbox();
  inicial.hitbox();
  mapa.prueba();

}

void keyReleased() {
  drill1.teclaSoltada(keyCode);
  drill2.teclaSoltada2();
}

void mousePressed () {
  if ((mouseX>x4) && (mouseX < x4+w) &&
    (mouseY > y4) && (mouseY < y4+h)) {
    if (botonjuego) {
      botonjuego = false;
    } else {
      botonjuego = true;
    }
  }
  if ((mouseX>n) && (mouseX< n+p) &&
    (mouseY > o) && (mouseY < o+q)) {
    if (botoninstruccion) {
      botoninstruccion = false;
    } else {
      botoninstruccion = true;
    }
  }
  if ((mouseX>e) && (mouseX< e+g) &&
    (mouseY > f) && (mouseY < f+i)) {
    if (botonplay) {
      botonplay = false;
    } else {
      botonplay = true;
    }
  }
  if ((mouseX>j) && (mouseX< j+l) &&
    (mouseY > k) && (mouseY < k+m)) {
    if (botonreturn) {
      botonreturn = false;
    } else {
      botonreturn = true;
    }
  }
}
