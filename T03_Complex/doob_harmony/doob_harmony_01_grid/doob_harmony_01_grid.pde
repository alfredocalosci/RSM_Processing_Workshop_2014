// MR DOOB - HARMONY
float[] x, y;

void setup() {
  size(600, 600);
  
  x = new float[1000];
  y = new float[x.length];
  
  for (int n = 0; n < x.length; n++) {
  x[n] = random(width);
  y[n] = random(height);
  }
  background(255);
  
  noStroke();
  for (int n = 0; n < x.length; n++) {
    
    fill(24,128);
    ellipse(x[n], y[n], 5, 5);
 
  }
}

void draw() {
  for (int n = 0; n < x.length; n++) {
    
  
  if ( dist(x[n], y[n], mouseX, mouseY) < 20) {
    stroke(100, 50);
    line(mouseX, mouseY, x[n], y[n]);
  }
  else {
    noFill();
  }
 
  }
}

