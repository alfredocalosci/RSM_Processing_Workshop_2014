// Dot sampling + Noise sizing

// Processing Workshop
// UNIRSM / IUAV / Design - Ottobre 2013 - Alfredo Calosci
// http://www.negot.net/RSM

PImage img;
float[] x, y;
color[] c;
float t;

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
  
  t = 0;
}

void draw() {
  background(255);
  
  for (int n = 0; n < x.length; n++) {
    noStroke();
    float d = map(noise(t,n),0,1,5,25); // diametro > ƒ noise
    float a = map(mouseY, 0, height, 5, 255);
    fill(c[n], a);
    ellipse(x[n], y[n], d, d);
  }
  
  t+=0.1;
}