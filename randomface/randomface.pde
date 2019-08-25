int eyeSize = 100;
int pupilSize = 10;
int eyeSpacing = 5;

void setup() {
  fullScreen();
}

void draw() {
  background(100);
  
  // mouth
  fill(255,255,255);
  bezier(width / 2 - eyeSize * 2 - eyeSpacing - 20, height / 2 + 100, width / 2 - eyeSize * 2 - eyeSpacing + 100, height / 2 + 300,width / 2 + eyeSize * 2 + eyeSpacing,height / 2 + 200,width / 2 + eyeSize * 2 + eyeSpacing + 20, height / 2 + 100);
  
  // eyes
  ellipse(width / 2 - eyeSpacing - eyeSize, height / 2 - eyeSize - eyeSpacing, eyeSize, eyeSize);
  ellipse(width / 2 + eyeSpacing + eyeSize, height / 2 - eyeSize - eyeSpacing, eyeSize, eyeSize);
  
  // pupils
  fill(0,0,0);
  float eyeMovementX = map(mouseX, 0, width, pupilSize / 2, eyeSize - pupilSize / 2);
  float eyeMovementY = map(mouseY, 0, height, pupilSize / 2, eyeSize - pupilSize / 2);
  ellipse(width / 2 - eyeSpacing - eyeSize - (eyeSize /2) + eyeMovementX, height / 2 - eyeSize - eyeSpacing - (eyeSize /2) + eyeMovementY, pupilSize, pupilSize);
  ellipse(width / 2 + eyeSpacing + eyeSize - (eyeSize /2) + eyeMovementX, height / 2 - eyeSize - eyeSpacing - (eyeSize /2) + eyeMovementY, pupilSize, pupilSize);
}