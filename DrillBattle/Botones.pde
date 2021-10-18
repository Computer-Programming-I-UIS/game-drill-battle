//Botones de los menus
boolean botonjuego = false;
int x4 = 440;
int y4 = 430;
int w = 200;
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
int j = 800;
int k = 530;
int l = 185;
int m = 30;

boolean botonvuelvemenu = false;
int b2 = 800;
int a2 = 580;
int c2 = 185;
int k2 = 30;

boolean botonvolver = false;
int n1 = 800;
int o1 = 50;
int p1 = 150;
int q1 = 30;

boolean botoncreditos = false;
int r = 440;
int s = 550;
int t = 200;
int u = 30;

boolean botonsalida = false;
int s1 = 440;
int a1 = 610;
int l1 = 200;
int i1 = 30;

boolean botonmute = false;
int m1 = 1000;
int u1 = 20;
int t1= 30;
int e1= 30;

boolean botonmute2 = false;
int m2 = 980;
int u2 = 50;
int t2= 30;
int e2= 30;

boolean botonmute3 = false;
int m3 = 980;
int u3 = 50;
int t3= 30;
int e3= 30;

boolean botonmute4 = false;
int m4 = 980;
int u4 = 50;
int t4= 30;
int e4= 30;

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
  if ((mouseX>n1) && (mouseX< n1+p1) &&
    (mouseY > o1) && (mouseY < o1+q1)) {
    if (botonvolver) {
      botonvolver = false;
    } else {
      botonvolver = true;
    }
  }
  if ((mouseX>r) && (mouseX< r+t) &&
    (mouseY > s) && (mouseY < s+u)) {
    if (botoncreditos) {
      botoncreditos = false;
    } else {
      botoncreditos = true;
    }
  }
  if ((mouseX>m1) && (mouseX< m1+t1) &&
    (mouseY > u1) && (mouseY < u1+e1)) {
    if (botonmute) {
      botonmute = false;
    } else {
      botonmute = true;
    }
  }
   if ((mouseX>m2) && (mouseX< m2+t2) &&
    (mouseY > u2) && (mouseY < u2+e2)) {
    if (botonmute2) {
      botonmute2 = false;
    } else {
      botonmute2 = true;
    }
  }
  if ((mouseX>m3) && (mouseX< m3+t3) &&
    (mouseY > u3) && (mouseY < u3+e3)) {
    if (botonmute3) {
      botonmute3 = false;
    } else {
      botonmute3 = true;
    }
  }
  if ((mouseX>m4) && (mouseX< m4+t4) &&
    (mouseY > u4) && (mouseY < u4+e4)) {
    if (botonmute4) {
      botonmute4 = false;
    } else {
      botonmute4 = true;
    }
  }
    if ((mouseX>b2) && (mouseX< b2+c2) &&
    (mouseY > a2) && (mouseY < a2+k2)) {
    if (botonvuelvemenu) {
      botonvuelvemenu = false;
    } else {
      botonvuelvemenu = true;
    }
  }
  
    if ((mouseX>s1) && (mouseX< s1+l1) &&
    (mouseY > a1) && (mouseY < a1+i1)) {
    if (botonsalida) {
      botonsalida = false;
    } else {
      botonsalida = true;
    }
  }
  
}
