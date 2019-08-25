ArrayList<Ball> balls;

void setup() {
  size(600,600);
  balls = new ArrayList<Ball>();
  background(100);
}

void mousePressed() {
  balls.add(new Ball(mouseX,mouseY));
}

void draw() {
  background(100);
  for(Ball ball : balls) {
    ball.update();
    ball.show();
  }
}