char[] rotations = {'f', 'F', 'b', 'B', 'u', 'U', 'd', 'D', 'l', 'L', 'r', 'R'};

void turnX(int index, boolean clockwise) {
  Properties[] properties = new Properties[8];
  for(int i=0; i<order.length; i++) {
    int a = order[i].a;
    int b = order[i].b;
    properties[i] = blocks[index][a][b].property.copy();
    properties[i].rotateX(clockwise);
  }
  
  for(int i=0; i<order.length; i++) {
    int a = order[i].a;
    int b = order[i].b;
    if(!clockwise) {
      blocks[index][a][b].property = properties[(i+order.length-2) % order.length];
    } else {
      blocks[index][a][b].property = properties[(i+2) % order.length];
    }
  }
}

void turnY(int index, boolean clockwise) {
  Properties[] properties = new Properties[8];
  for(int i=0; i<order.length; i++) {
    int a = order[i].a;
    int b = order[i].b;
    properties[i] = blocks[a][index][b].property.copy();
    properties[i].rotateY(clockwise);
  }
  
  for(int i=0; i<order.length; i++) {
    int a = order[i].a;
    int b = order[i].b;
    if(!clockwise) {
      blocks[a][index][b].property = properties[(i+2) % order.length];
    } else {
      blocks[a][index][b].property = properties[(i+order.length-2) % order.length];
    }
  }
}

void turnZ(int index, boolean clockwise) {
  Properties[] properties = new Properties[8];
  for(int i=0; i<order.length; i++) {
    int a = order[i].a;
    int b = order[i].b;
    properties[i] = blocks[a][b][index].property.copy();
    properties[i].rotateZ(clockwise);
  }
  
  for(int i=0; i<order.length; i++) {
    int a = order[i].a;
    int b = order[i].b;
    if(!clockwise) {
      blocks[a][b][index].property = properties[(i+2) % order.length];
    } else {
      blocks[a][b][index].property = properties[(i+order.length-2) % order.length];
    }
  }
}

void scramble() {
  int randomIndex = (int) random(0, rotations.length);
  rotate(rotations[randomIndex]);
}

void rotate(char key) {
  switch(key) {
    case 'f': 
      turnZ(2, true);  
      break;
    case 'F':  
      turnZ(2, false);
      break;
    case 'b':
      turnZ(0, false);
      break;
    case 'B':
      turnZ(0, true);
      break;
    case 'u':
      turnY(0, true);
      break;
    case 'U':
      turnY(0, false);
      break;
    case 'd':
      turnY(2, false);
      break;
    case 'D':
      turnY(2, true);
      break;
    case 'l':
      turnX(0, true);
      break;
    case 'L':
      turnX(0, false);
      break;
    case 'r':
      turnX(2, false);
      break;
    case 'R':
      turnX(2, true);
      break;
  }
}

class Index {
  int a,b;
  Index(int a, int b) {
    this.a = a;
    this.b = b;
  }
}

Index[] order = {
  new Index(0,0),
  new Index(1,0),
  new Index(2,0),
  new Index(2,1),
  new Index(2,2),
  new Index(1,2),
  new Index(0,2),
  new Index(0,1),
};
