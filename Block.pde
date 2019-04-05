class Block {
  
  Properties property = new Properties();
  
  color[] colors = {
    color(0,0,255), color(0,255,0), 
    color(255,255,0), color(255,255,255), 
    color(255,80,10), color(255,0,0)
  };
  
  void show() {
    for (int i=0; i<6; i++) {
      drawFace(i);
    }
  }
  
  void drawFace(int faceNo) {
    fill(colors[property.get(faceNo)]);
    strokeWeight(5);
    
    switch(faceNo) {
      //Left
      case 0:
        beginShape();
        addVertex(0, 0, 1);
        addVertex(0, 0, 0);
        addVertex(0, 1, 0);
        addVertex(0, 1, 1);
        endShape(CLOSE);
        break;
      //Right  
      case 1:
        beginShape();
        addVertex(1, 0, 1);
        addVertex(1, 0, 0);
        addVertex(1, 1, 0);
        addVertex(1, 1, 1);
        endShape(CLOSE);
        break;
      //Up
      case 2:
        beginShape();
        addVertex(0, 0, 1);
        addVertex(0, 0, 0);
        addVertex(1, 0, 0);
        addVertex(1, 0, 1);
        endShape(CLOSE);
        break;
      //Down  
      case 3:
        beginShape();
        addVertex(0, 1, 1);
        addVertex(0, 1, 0);
        addVertex(1, 1, 0);
        addVertex(1, 1, 1);
        endShape(CLOSE);
        break;
      //Back  
      case 4:
        beginShape();
        addVertex(0, 0, 0);
        addVertex(1, 0, 0);
        addVertex(1, 1, 0);
        addVertex(0, 1, 0);
        endShape(CLOSE);
        break;
      //Front  
      case 5:
        beginShape();
        addVertex(0, 0, 1);
        addVertex(1, 0, 1);
        addVertex(1, 1, 1);
        addVertex(0, 1, 1);
        endShape(CLOSE);
        break;
    }
}
  
  void addVertex(int x, int y, int z) {
    vertex((x-0.5)*BLOCK_WIDTH, (y-0.5)*BLOCK_WIDTH, (z-0.5)*BLOCK_WIDTH);
  }
  
}
