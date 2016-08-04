// HalfTone

// Processing Workshop
// UNIRSM / IUAV / Design - Ottobre 2013 - Alfredo Calosci
// http://www.negot.net/RSM

PImage img;
float[] x, y;
color[] c;

void setup() {
  size(393, 482);
img = loadImage("obama-portrait.jpg");

  x = new float[5000];
  y = new float[x.length];
 // c = new color[x.length];

  for (int n = 0; n < x.length; n++) {
    x[n] = random(width);
    y[n] = random(height);
   // c[n] = img.get(floor(x[n]), floor(y[n]));
  }
  
  
  background(0);
  noStroke();

  int d = 3;
  
  int c = 0;

  for (int n = 0; n< img.width; n+= d) {
   
    for (int i = 0; i< img.height; i+= d) {
      
      color col = img.get(floor(n*d), floor(i*d));
      float b = brightness(col);
      float w = map(b, 0, 100, 1, 5);// diametro

      fill(255);
      //fill(128);
      ellipse(d/2 + n*d, d/2+ i*d, w, w);
       c++;
    }
    
  }
  
  println(c);
}


void draw() {
  
}