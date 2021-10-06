import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;

boolean botonjuego = false;
int x = 580;
int y = 300;
int w = 200;
int h = 30;

boolean botoninstruccion = false;
int a = 605;
int b = 350;
int c = 150;
int d = 30;

boolean botonplay = false;
int e = 1000;
int f = 500;
int g = 150;
int i = 30;

String gameState;

void setup () {
  fullScreen();
  gameState = "START";
  minim = new Minim (this);
  player = minim.loadFile ("Theme-1.wav");
  player2 = minim.loadFile ("Theme-2.wav");
  player3 = minim.loadFile ("Theme-3.wav");
}

void draw () {
  background (0);
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

void mousePressed () {
  if ((mouseX>x) && (mouseX < x+w) &&
    (mouseY > y) && (mouseY < y+h)) {
    if (botonjuego) {
      botonjuego = false;
    } else {
      botonjuego = true;
    }
  }
  if ((mouseX>a) && (mouseX< a+c) &&
    (mouseY > b) && (mouseY < b+d)) {
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
}

void startGame () {
  player.play();
  if (botonjuego) {
    gameState = "PLAY";
    player.pause();
  }
  fill (175);
  rect (x, y, w, h);

  if (botoninstruccion) {
    gameState = "INSTRUCCION";
    player.pause();
  }
  fill (175);
  rect (a, b, c, d);
}
void playGame () {
  player2.play();
}

void instruccion() {
  player3.play();
  if (botonplay) {
    gameState = "PLAY";
    player3.pause();
  }
  fill (175);
  rect (e, f, g, i);
}

void winGame () {
  player3.play();
}
