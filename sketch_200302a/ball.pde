class Ball {
  float dia;
  float x;
  float y; 
  float col;
  float xspeed;
  float yspeed;
  float acc = sin(TWO_PI/400);
  float r;
 
  Ball (float tempD, float tempC) {
   x = random(100,700);
    y = random(100,400);
   
    dia = tempD;
    col = tempC;
    r = dia/2;
    xspeed = 1.2;
    yspeed = 1.2;
  }
 
  void display() {
    noStroke();
    fill(col);
    ellipse(x, y, dia, dia);
  }
 
  void move() {
    //xspeed = xspeed+acc;
    //yspeed = yspeed+acc;
    x = x + xspeed;
    y = y + yspeed;
  }
 
  void edges() {
    if (x > width-r || x < r) {
      xspeed = xspeed * -1;
    }
    if (y > height-r || y < r) {
      yspeed = yspeed * -1;
    }
  }
 
  void overlaps(Ball o) {
    float d = dist(x,y,o.x,o.y);
    
    if (d < r + o.r) {
      xspeed = xspeed*-1;
      yspeed = yspeed*-1;
      col = 255;
    //  println(d);
    } else{
     col= color(255,0,255);
     
}
  }
}
