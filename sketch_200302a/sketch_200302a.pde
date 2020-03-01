Ball[] balls = new Ball[4];
 
void setup() {
  size(800, 600);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(50, 120);
  }
}
 
void draw() {
  background(255);
  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].move();
    balls[i].edges();
    for (int j = 0; j < balls.length; j++) {
      if(j!=i){
      balls[i].overlaps(balls[j]);
      balls[j].overlaps(balls[i]);
      }
    }
  }
}
