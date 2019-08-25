public class Wanderer {
  
  private float x, y, size;
  
  public Wanderer(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  public void draw() {
    noStroke();
    fill(255,255,255,50);
    ellipse(x,y,size,size);
  } 
  
  public void walk() {
    x += random(-1,1);
    y += random(-1,1);
  }
  
}