// Elian Arce
// tp3 comision 2
PImage ilusion;
int mod;
void setup() {
  size(800, 400);
  mod = 20 ; 
  ilusion = loadImage("ilusion.png");
   image(ilusion, 0, 0, 400, 400); 
}
  void draw() {
    for( int i = 200 ; i < height ; i+=mod ){ 
    for( int j = 0 ;  j < height  ; j+=mod ){  
      fill(18,85,34); 
      rect( i, j, mod, mod );
      }
       }
       
        }
