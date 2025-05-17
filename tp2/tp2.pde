
PImage imagen1, imagen2, imagen3;
int segundos= 0;
int estado= 0;
boolean arranca, reinicio;
int posX2, posX3, posX4;
int px, py, ancho, alto;
int posX = 200;
PFont mifuente;
void setup() {
  size(640, 480);
  textAlign(CENTER, CENTER);
  mifuente = loadFont("miletra.vlw");
  textFont(mifuente, 20);
  posX2 = 1100;
  posX3 = -200;
  posX4 = 1100;
  imagen1 = loadImage("god of war1.png");
  imagen2 = loadImage("god of war2.png");
  imagen3 = loadImage("god of war3.png");
  px = 220;
  py = 420;
  ancho = 200;
  alto = 50;
}

void draw() {
  if (arranca == true) {
    if (frameCount%60==0) {
      segundos ++;
    }
  }
  if (estado==0) {
    image(imagen1, 0, 0, 640, 480);
  }
  if (segundos<= 0) {
    fill(255);
    textSize(38);
    text("EMPEZAR", 320, 445);
  } else if ( segundos>0 && segundos<= 10) {
    fill(255, 0, 0);
    text("Les presento God of War 3. \n un juego de accion/aventura \n hack and slash \n desarrollado por \n Santa Monica Studio \n exclusivo de Playstation ", posX2, height/2);
  }
  if (posX2>width/2) {
    posX2 = posX2 -2;
  }
  if (estado==1) {
    image(imagen2, 0, 0, 640, 480);
    fill(255, 0, 0);
    text("Seguimos a Kratos, un semi dios \n que quiere vengarse de los dioses \n del Olimpo por engaños de estos \n hacia Kratos en el pasado. \n Siendo este juego el fin de su venganza.", width/2, posX3);
    if (posX3<height/2) {
      posX3 = posX3 +2;
    }
  }
  if (estado==2) {

    image(imagen3, 0, 0, 640, 480 );
  }
  if (segundos<=8) {
    estado = 0;
    if (segundos<=0) {
      if (mouseX>220 && mouseX <420 && mouseY>419 && mouseY<470 ) {
        fill(0, 0, 0, 200);
      } else {
        fill(0, 0, 0, 100);
      }
      rect(px, py, ancho, alto);
      fill(0, 0, 0, 255);
    }
  } else if (segundos>10 && segundos<= 20) {
    estado = 1;
  } else if (segundos>20) {
    estado = 2;
    fill(255, 0, 0);
    text("A lo largo de la aventura \n conseguiras multiples armas \n que te ayudaran a finalizar \n la venganza de Kratos. \n Una mas poderosa que la otras \n y con sus propias mecanicas. ", posX4, height/2);
    if (posX4>width/2) {
      posX4 = posX4 -2;
    }
  }
  if (segundos>26 ) {
    if (mouseX>220 && mouseX <420 && mouseY>419 && mouseY<470 ) {
      fill(0, 0, 0, 200);
    } else {
      fill(0, 0, 0, 100);
    }
    rect(px, py, ancho, alto);
    fill(0, 0, 0, 255);
  }
  if (segundos>28) {
    fill(255);
    rect(px, py, ancho, alto);
    fill(0);
    textSize(38);
    text("REINICIAR", 320, 445 );
  }
}
void mousePressed() {
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    posX += 10;
    arranca = true;
  }
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    segundos = 0;
    reinicio = true;
    posX2 = 1100;
    posX3 = -200;
    posX4 = 1100;
  }
}
