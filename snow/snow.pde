ArrayList<PVector> snow;

void setup() {
  size(600,600);
  snow = new ArrayList<PVector>();
  for(int i = 0; i < 500;i++) {
    snow.add(new PVector(random(width), random(-200,0)));
  }
  noStroke();
}

void draw() {
  background(0);
  
  for(PVector snowParticle : snow) {
    if(snowParticle.y < height) {
      snowParticle.y += random(-2, 3);
    }
  }
  
  for(PVector snowParticle : snow) {
    float r = random(1,6);
    ellipse(snowParticle.x, snowParticle.y, r, r);
  }
}