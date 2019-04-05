import peasy.*;

PeasyCam cam;

//size of each block
final int BLOCK_WIDTH = 100;
  
//size of cube
int dimensions = 3;

final int R = 0;
final int L = 1;
final int U = 2;
final int D = 3;
final int F = 4;
final int B = 5;
  
Cube cube;

void setup() {
  size(800, 800, P3D);
  frameRate(60);
  cam = new PeasyCam(this, 900);
  cube = new Cube();
  //scramble();
}

void draw() {
  background(50);
  smooth();
  
  rotateX(-0.35);
  rotateY(0.65);
  
  cube.show();
}

void keyPressed() {
  rotate(key);
}
