import processing.serial.*;

Serial connection;
int val = 0;

void setup() {
  //fullScreen();
  size(500,500);
  background(100);
  if(Serial.list().length > 0) {
    String portName = Serial.list()[0];
    connection = new Serial(this, portName, 9600);
    connection.bufferUntil('\n');
  } else {
    System.out.println("NO CONNECTION");
    exit();
  }
}

void draw() {
  background(255);
  //System.out.println("val is: "+val);
  if(val > 1) {
    fill(0,255,0);
  } else {
    fill(255,0,0);
  }
  ellipse(width / 2, height / 2, 50, 50);
}

void serialEvent(Serial p) {
  String num = trim(p.readStringUntil('\n'));
  val = int(num);
}