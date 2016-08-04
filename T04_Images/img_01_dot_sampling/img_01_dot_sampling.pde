// Dot sampling

// see: http://processing.org/examples/pointillism.html
// by: Daniel Shiffman

// The next line is needed if running in JavaScript Mode with Processing.js
/* @pjs preload="obama-portrait.jpg"; */ 

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
  
  for (int n = 0; n < x.length; n++) {
    noStroke();
    
    fill(c[n]);
    ellipse(x[n], y[n], 15, 15);
  }
  
}