import peasy.*;

PeasyCam cam;

//size of each block
final int BLOCK_WIDTH = 100;
  
//size of cube
int dimensions = 3;
  
Cube cube;

void setup() {
  size(800, 800, P3D);
  frameRate(60);
  cam = new PeasyCam(this, 900);
  cube = new Cube();
}

void draw() {
  background(50);
  smooth();
  
  rotateX(-0.35);
  rotateY(0.65);
  
  cube.show();
}
