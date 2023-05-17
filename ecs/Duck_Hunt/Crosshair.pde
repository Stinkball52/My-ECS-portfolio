class Crosshair {
  int x, y;
  PImage C1;

  Crosshair() {
    x = width/2;
    y = height-100;
    C1 = loadImage("New Piskel.gif");
  }

  void display() {
    imageMode(CENTER);
    C1.resize(100,100);
    image(C1, x, y);
  }

  void move(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }
}
