Ball ball[] = new Ball[6000]; 
 
void setup() {
  size(400,400);
 
  for(int i=0; i<ball.length; i++) {
    ball[i] = new Ball((int)random(500), (int)random(500),(int)random(-2,2),(int)random(-2,2));
  }
}

void draw() {
  background(255);
  for (int i=0; i<ball.length; i++){
    ball[i].move();
    ball[i].display();
  }
 
}
 
class Ball {
  int x;
  int y;
  int xSpeed;
  int ySpeed;
 
  Ball(int tempX, int tempY, int xspeedtemp, int yspeedtemp) {
    x = tempX;
    y = tempY;
    xSpeed = xspeedtemp;
    ySpeed = yspeedtemp;
 
  }
 
  void display() {
    noStroke();
    fill(y,y,y);
    ellipse(x,y,20,20);
  }
 
  void move() {
      if ((x>400) || (x<0)) {
      xSpeed = xSpeed * -1;
    }
    if ((y>400) || (y<0)) {
      ySpeed = ySpeed * -1;
    }
    
    x = x - xSpeed;
    y = y + ySpeed;
 
  }
}