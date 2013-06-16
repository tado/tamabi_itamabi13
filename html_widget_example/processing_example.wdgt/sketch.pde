int NUM = 32;
float[] x = new float[NUM];
float[] y = new float[NUM];
float phase, speed, radius, ratio;

void setup() {
  size(960, 640);
  frameRate(30);
  background(0);
  speed = 3.0;
  radius = height/4.0;
  ratio = 1.33;
}

void draw() {
  if (mousePressed) {
    ratio = float(mouseX) / float(mouseY);
  }
  fade();
  translate(width/2, height/2);
  phase += speed;
  for (int i = 0; i < NUM; i++) {
    x[i] = cos(radians(phase) / NUM * (i + 1)) * radius;
    y[i] = sin(radians(phase) / NUM * (i + 1) * ratio) * radius;
    noFill();
    stroke(0, 127, 255);
    ellipse(x[i], y[i], radius/float(NUM) * i, radius/float(NUM) * i);
  }
}

void fade() {
  noStroke();
  fill(0, 10);
  rect(0, 0, width, height);
}