// Code from Visualizing Data, First Edition, Copyright 2008 Ben Fry.
// Based on the GraphLayout example by Sun Microsystems.

class Node {
  float x, y;
  float dx, dy;
  boolean fixed;
  String label;
  color myColor;

  Node(String label) {
    this.label = label;
    x = random(width);
    y = random(height);
    myColor = color(128);
 }
  
  
  void relax() {
    float ddx = 0;
    float ddy = 0;

    for (int j = 0; j < nodeCount; j++) {
      Node n = nodes[j];
      if (n != this) {
        float vx = x - n.x;
        float vy = y - n.y;
        float lensq = vx * vx + vy * vy;
        if (lensq == 0) {
          ddx += random(1);
          ddy += random(1);
        //} else if (lensq < 100*50) {
        } else if (lensq < 3000) {
          ddx += vx / lensq;
          ddy += vy / lensq;
        }
      }
    }
    float dlen = mag(ddx, ddy) / 2;
    if (dlen > 0) {
      dx += ddx / dlen;
      dy += ddy / dlen;
    }
  }


  void update() {
    //if (!fixed) {      
      x += constrain(dx, -20, 20);
      y += constrain(dy, -20, 20);
      
      x = constrain(x, 20, width-20);
      y = constrain(y, 20, height-20);
   // }
    dx /= 2;
    dy /= 2;
  }
  
   void seletctMe(){
    myColor = color(0);
  }
  
  void deSeletctMe(){
    myColor = color(128);
  }
  

  void display() {
    fill(myColor);
    stroke(0);
    ellipse(x, y, 15, 15);
  }
}

