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
PImage victoria1;
PImage victoria2;
PImage mute;
PImage sound;

//Textos
PFont punt;
PFont jugar;
PFont instruccion;
PFont juego;
PFont salir;
PFont juegodenuevo;
PFont creditos;

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
instrucciones = loadImage ("Instruc.png");
victoria1 = loadImage ("Victoria amarilla.png");
victoria2 = loadImage("Victoria verde.png");
mute = loadImage ("mute.png");
sound = loadImage("sound.png");

//Cargar fuentes

punt = createFont("PressStart2P.ttf", 30);
jugar = createFont ("PressStart2P.ttf", 14);
instruccion = createFont ("PressStart2P.ttf", 14);
juego = createFont ("PressStart2P.ttf", 12);
salir = createFont ("PressStart2P.ttf", 14);
juegodenuevo = createFont ("PressStart2P.ttf", 12);
creditos = createFont ("PressStart2P.ttf", 14);

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
  } else if (gameState == "CREDITOS") {
    creditos();
  }

}

void startGame () {
  if(!player.isPlaying()){
  player.loop();}
  
  
  if (botonjuego) {
    
    player.pause();
    inicial.dibuj();
    drill2.dibujar();
    drill1.dibujar();
    gameState = "PLAY";
    botonjuego=false;
  }
  if(gameState== "START"){
  image (menu, 0, 0);
  fill (100, 30, 22);
  rect (x4, y4, w, h);
  fill (255);
  textFont(jugar);
  text ("JUGAR", 508, 454);
  
  //rect(0,0,500,500);
  
  fill (100, 30, 22);
  rect (n, o, p, q);
  fill (255);
  textFont(instruccion);
  text ("INSTRUCCIONES", 450, 512);
  
  
  fill (100, 30, 22);
  rect (r, s, t, u);
  fill (255);
  textFont(creditos);
  text ("CREDITOS", 485, 575);
  
  
  fill (100, 30, 22);
  rect (m1, u1, t1, e1);
  image (mute, 1005, 25);
  
  fill (100, 30, 22);
  rect (s1,a1,l1,i1);
  fill (255);
  textFont(salir);
  text ("SALIR",505,632);
  
  botonvolver=false;

  }
  
  
  if (botoninstruccion) {
    gameState = "INSTRUCCION";
    player.pause();
    botoninstruccion=false;
  }
  
  if (botoncreditos) {
    gameState = "CREDITOS";
    player.pause();
    botoncreditos=false;
  }
  
  if (botonsalida) {
    exit();
  }
  
  if (botonmute) {
    player.mute();
    if(gameState == "START"){
    fill (182, 6, 6);
    rect (m1, u1, t1, e1);
    image (mute, 1005, 25);}
  } else {
    player.unmute();
    if(gameState == "START"){
    fill (100, 30, 22);
    rect (m1, u1, t1, e1);
    image (sound, 1005, 25);}
  }

}

void playGame () {
   if(!player2.isPlaying()){
   player2.loop();}
  
  if (botonmute4) {
    player2.mute();
    fill (182, 6, 6);
    rect (m4, u4, t4, e4);
    image (mute, 985, 55);
  } else {
    player2.unmute();
    fill (100, 30, 22);
    rect (m4, u4, t4, e4);
    image (sound, 985, 55);
  }
  
  
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
  if(gameState=="WIN"){
  
    if(puntos1==100){
      image(victoria1, 0, 0);
      }
      if(puntos2==100){
       image(victoria2, 0, 0);
      }
    
  fill (100, 30, 22);
  rect (j, k, l, m);
  fill (255);
  textFont(juegodenuevo);
  text ("VOLVER A JUGAR", 810, 552);
    
  fill (100, 30, 22);
  rect (b2,a2,c2,k2);
  fill (255);
  textFont(juegodenuevo);
  text ("VOLVER AL MENÚ", 810, 602); 
    
    
  }

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
  
  if (botonvuelvemenu) {
    gameState = "START";
    player4.pause();
    
    
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
    botonreturn=false;
    botonvuelvemenu=false;
  }
  
}

void instruccion() {
  if(gameState=="INSTRUCCION"){
  image (instrucciones, 0, 0);
  fill (100, 30, 22);
  rect (e, f, g, i);
  fill (255);
  textFont(juego);
  text ("IR AL JUEGO", 815, 70);
  if (botonmute2) {
    player3.mute();
    if(gameState=="INSTRUCCION"){
    fill (182, 6, 6);
    rect (m2, u2, t2, e2);
    image (mute, 985, 55);}
  } else {
    player3.unmute();
    if(gameState=="INSTRUCCION"){
    fill (100, 30, 22);
    rect (m2, u2, t2, e2);
    image (sound, 985, 55);}
  }
  }
  
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
  
}

void creditos() {
  background(0);
  player3.play();
  if (botonvolver) {
    
    player3.pause();
    gameState = "START";
    botoncreditos=false;
    
  }
  if(gameState=="CREDITOS"){
  fill (100, 30, 22);
  rect (n1, o1, p1, q1);
  fill (255);
  textFont(juego);
  text ("IR AL MENU", 815, 70);
  
   if (botonmute3) {
    player3.mute();
    if(gameState=="CREDITOS"){
    fill (182, 6, 6);
    rect (m3, u3, t3, e3);
    image (mute, 985, 55);}
  } else {
    player3.unmute();
    if(gameState=="CREDITOS"){
    fill (100, 30, 22);
    rect (m3, u3, t3, e3);
    image (sound, 985, 55);}
  }
  }
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
