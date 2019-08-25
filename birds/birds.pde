ArrayList<PVector> birds;
int birdLength = 25;

void setup() {
  size(600,600);
  birds = new ArrayList<PVector>();
  for(int i = 0; i < 100; i++) {
    birds.add(new PVector(random(0,width), random(0,height)));
  }
}

void draw() {
  for(PVector bird : birds) {
    triangle(bird.x,
             bird.y,
             bird.x-birdLength / 2,
             bird.y+birdLength,
             bird.x+birdLength / 2,
             bird.y+birdLength);
  }
}