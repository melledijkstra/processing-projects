public class Ball {
  
  int x;
  int y;
  int r = 20;
  color c;
  
  ArrayList<PVector> history;
  
  public Ball(int x, int y) {
    this.x = x;
    this.y = y;
    this.history = new ArrayList<PVector>();
    this.c = color(random(255));
  }
  
  public void update() {
    this.history.add(new PVector(this.x,this.y));
    this.y += random(-5,5);
    this.x += random(-5,5);
    if(this.history.size() > 50) {
      this.history.remove(0);
    }
  }
  
  public void show() {
    for(PVector histPoint : this.history) {
      fill(0,0,0,0.5);
      ellipse(histPoint.x,histPoint.y, 5, 5);
    }
    fill(this.c);
    ellipse(x,y,r,r);
  }
  
}