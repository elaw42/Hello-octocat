float theta, angVel, amp;
int xspace = 8;
int d = 20;

void setup() {
  size(600, 200);
  theta = 0;
  angVel = .1;
  noStroke();
  fill(255, 120);
  amp = height*.4;
}

void draw() {
  background(0);
  float ang = theta;
  for (int x = 0; x <= width; x+=xspace) {
    float y = map(sin(ang), -1, 1, height/2 - amp/2, height/2 + amp/2);
    ellipse(x, y, d, d);
    ang+=angVel;
  }
  theta+=.01;
}

