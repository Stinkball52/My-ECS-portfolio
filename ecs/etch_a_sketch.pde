//Nicholas Simos | 17 April | Etch a Sketch
int x, y;
PImage etch;
void setup() {
  //size(displayWidth,displayHeight);
  size(850,850);
  etch = loadImage("Etch.png");
  x = 20;
  y = 20;
}
void draw() {
  image(etch,0,0);
  strokeWeight(int(random(2,2)));
  //background(255);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      moveUp(1);
    } else if (key == 's' || key == 'S') {
      moveDown(1);
    } else if (key == 'a' || key == 'A') {
      moveLeft(1);
    } else if (key == 'd' || key == 'D') {
      moveRight(1);

    }
  }
}


void mousePressed() {
  saveFrame("line-######.png");
}



void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x = x + rep;
}
void moveLeft(int rep) {
 for (int i=0; i<rep; i++) {
    point(x-i, y);
  }
  x = x - rep;
}

void moveUp(int rep) {
 for (int i=0; i<rep; i++) {
    point(x, y-i);
  }
  y = y - rep;
}

void moveDown(int rep) {
 for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  y = y + rep;
}
