Block[][][] blocks;

class Cube {
  
  public Cube() {
    blocks = new Block[dimensions][dimensions][dimensions];   
    
    for(int i=0; i<dimensions; i++) {
      for(int j=0; j<dimensions; j++) {
        for(int k=0; k<dimensions; k++) {
          blocks[i][j][k] = new Block();
        }
      }
    }
  }
  
  void show() {
    for(int i=0; i<dimensions; i++) {
      for(int j=0; j<dimensions; j++) {
        for(int k=0; k<dimensions; k++) {
          pushMatrix();
          translate(i*BLOCK_WIDTH-BLOCK_WIDTH, j*BLOCK_WIDTH-BLOCK_WIDTH, k*BLOCK_WIDTH-BLOCK_WIDTH);
          blocks[i][j][k].show();
          popMatrix();
        }
      }
    }
  }
 
  
}
