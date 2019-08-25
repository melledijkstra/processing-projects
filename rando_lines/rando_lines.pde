import processing.sound.*;

ArrayList<Line> lines;

void setup() {
  lines = new ArrayList();
  fullScreen();
  background(100);
}

void draw() {
  background(100);
  if(lines.size() > 100) {
    lines.clear();
  }
  lines.add(new Line());
  for(Line line : lines) {
    line.draw();
  }
  text("FPS:", 20, 20);
  text(round(frameRate), 20, 30);
}