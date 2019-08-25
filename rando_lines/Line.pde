class Line {
  float startX;
  float startY;
  float endX;
  float endY;
  
  public Line() {
    this.startX = random(width);
    this.startY = random(height);
    this.endX = random(width);
    this.endY = random(height);
  }
  
  public Line(float startx, float starty, float endx, float endy) {
    this.startX = startx;
    this.startY = starty;
    this.endX = endx;
    this.endY = endy;
  }
  
  public void draw() {
    line(this.startX, this.startY, this.endX, this.endY);
  }
}