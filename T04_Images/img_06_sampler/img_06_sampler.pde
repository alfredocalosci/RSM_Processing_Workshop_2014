// Color Sampler

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
  background(255);
 
  stroke(0);

int d = floor(map(mouseX, 0, width, 8, 120));
float a = map(mouseY,0,height, 5, 255);
rectMode(CENTER);

  for (int n = 0; n< img.width; n+= img.width/d) {
    for (int i = 0; i< img.height; i+= img.height/d) {
      fill(img.get(floor(n), floor(i)), a);
      //fill(128);
      rect(n, i, img.width/d, img.height/d);
    }
  }
  
}