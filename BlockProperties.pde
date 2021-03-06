class Properties {
  int[] sides;
  
  Properties() {
    sides = new int[] {0, 1, 2, 3, 4, 5};
  }
  
  Properties(int[] sides) {
    this.sides = sides;
  }
  
  void rotateX(boolean clockwise) {
    if(clockwise) {
      int temp = sides[F];
      sides[F] = sides[U];
      sides[U] = sides[B];
      sides[B] = sides[D];
      sides[D] = temp;
    } else {
      int temp = sides[B];
      sides[B] = sides[U];
      sides[U] = sides[F];
      sides[F] = sides[D];
      sides[D] = temp;
    }
  }
  
  void rotateY(boolean clockwise) {
    if(clockwise) {
      int temp = sides[F];
      sides[F] = sides[R];
      sides[R] = sides[B];
      sides[B] = sides[L];
      sides[L] = temp;
    } else {
      int temp = sides[F];
      sides[F] = sides[L];
      sides[L] = sides[B];
      sides[B] = sides[R];
      sides[R] = temp;
    }
  }
  
  void rotateZ(boolean clockwise) {
    if(clockwise) {
      int temp = sides[D];
      sides[D] = sides[R];
      sides[R] = sides[U];
      sides[U] = sides[L];
      sides[L] = temp;
    } else {
      int temp = sides[U];
      sides[U] = sides[R];
      sides[R] = sides[D];
      sides[D] = sides[L];
      sides[L] = temp;
    }
  }
  
  Properties copy() {
    int[] temp = new int[sides.length];
    arrayCopy(sides, temp);
    return new Properties(temp);
  }
  
  int get(int side) {
    return sides[side];
  }
  
}
