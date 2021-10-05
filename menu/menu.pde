import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;

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
  }
}
void playGame () {
  player2.play();
}

void winGame () {
  player3.play();
}
