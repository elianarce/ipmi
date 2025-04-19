PImage play;
void setup() {
  size(800, 400);
  play = loadImage("play5.jpg");
  
}
void draw() {
  println("X:" + mouseX + "Y:"+mouseY);
    background(108, 0, 13);
  image(play, 0, -40, 400, 460);
  strokeWeight(0);
 fill(20);
  quad(525,167,763,132,765,165,525,200);
 fill(255);
  quad(512,25,775,10,775,133,512,170);
  quad(514,200,775,160,777,360,514,370);
  strokeWeight(4);
  fill(0);
  line(495,329,400,330);
  line(495,152,400,178);
 strokeWeight(0);
  quad(495,325,513,325,513,334,495,334);
  quad(495,145,512,145,512,160,495,160);
  quad(538,35,542,35,542,51,538,51);
  ellipse(546,38,4,9);
 strokeWeight(2);
  line(540,34,546,34);
  fill(0);
  strokeWeight(5);
  line(515,175,775,139);
  line(515,185,775,147);
  line(515,194,775,155);
  strokeWeight(2);
  noFill();
  curve(600,10,537,44,537,48,600,10);
    curve(400,90,540,48,540,53,600,140);
 
}
