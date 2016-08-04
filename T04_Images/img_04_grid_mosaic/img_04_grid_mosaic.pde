// Grid

PImage img;
float[] x, y;
color[] c;

void setup() {
  size(393, 482);
img = loadImage("obama-portrait.jpg");

  x = new float[5000];
  y = new float[x.length];
  c = new color[x.length];

  for (int n = 0; n < x.length; n++) {
    x[n] = random(width);
    y[n] = random(height);
    c[n] = img.get(floor(x[n]), floor(y[n]));
  }
}


void draw() {
  background(0);
  noStroke();

int d = 3;

  for (int n = 0; n< img.width; n+= d) {
    for (int i = 0; i< img.height; i+= d) {
      fill(img.get(floor(n*d), floor(i*d)));
      //fill(128);
      ellipse(d/2 + n*d, d/2+ i*d, d*2, d*2);
    }
  }
  
}