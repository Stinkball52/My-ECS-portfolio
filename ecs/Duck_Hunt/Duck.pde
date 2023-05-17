class Duck {
  int x, y,speed;
  PImage D1;
  boolean right;

  Duck() {
    x = int(random(100,500));
    y = height-100;
    speed = int(random(1,8));
    if(random(2)==0) {
      right = true;
      
    }else {
    
      }
    D1 = loadImage("Duck Normal.gif");
  }

  void display() {
    imageMode(CENTER);
    D1.resize(100,100);
    image(D1, x, y);
  }

  void move() {
    if(x<0) {
      x = width;
    }
   x = x - speed;
   y = y - speed;
  }
}
