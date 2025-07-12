// Elian Arce  
// tp3 rec comision 2 
// link de video https://youtu.be/wD7wQswOp8U
PImage ilusion; 
int mod;
color ColorB;
float XPos, YPos;

void setup() {
  size(800, 400);
  mod = 20;
  ilusion = loadImage("ilusion.png");
  image(ilusion, 0, 0, 400, 400);
  ColorB = color(200, 0, 0);
}

void draw() {
  dibujarGrilla();
  MousePos();
  float X = XPos;
  float Y = YPos;  

  for (int i = 410; i < 800; i += mod) {
    for (int j = 10; j < 400; j += mod) {
      float dis = dist(i, j, X, Y);
      float maxDis = dist(350, 200, X, Y);
      float radio = dis / maxDis;

      color ColorA = AgarraColor(radio);
      fill(ColorA);
      noStroke();
      ellipse(i, j, 18, 18);
    }
  }
}

// Función para dibujar la grilla
void dibujarGrilla() {
  for (int i = 400; i < 800; i += mod) {
    for (int j = 0; j < 400; j += mod) {
      fill(18, 85, 34);
      stroke(0, 100, 37);
      rect(i, j, mod, mod);
    }
  }
}

// Funcion para ctualizar la posición del mouse
void MousePos() {
  XPos = mouseX;
  YPos = mouseY;
}

// Funcion para el color de la elipse
color AgarraColor(float radio) {
  int r = (int) lerp(red(ColorB), 0, radio);
  int g = (int) lerp(green(ColorB), 0, radio);
  int b = (int) lerp(blue(ColorB), 0, radio);
  return color(r, g, b);
}

void keyPressed() {
  if (key == 'c' || key == 'C') {
    ColorB = color(random(255), random(255), random(255));
  } else if (key == 'r' || key == 'R') {
    ColorB = color(200, 0, 0);    
  }
}
