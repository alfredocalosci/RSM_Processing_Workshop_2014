// Mosaico

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
    
    float b = brightness(c[n]);
    float d = map(b,0,100,4,20);// diametro
    
    fill(c[n]);
    ellipse(x[n], y[n], d, d);
  }
  
}