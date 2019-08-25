ArrayList<Wanderer> wanderers;

void setup() {
  size(500,500);
  background(122);
  wanderers = new ArrayList<Wanderer>();
  
  for(int i = 0; i < 300; i++) {
    wanderers.add(new Wanderer(random(width), random(height), 10));
  }
}

void draw() {
  background(122);
  for(Wanderer wanderer : wanderers) {
    wanderer.walk();
    wanderer.draw();
  }
}