/*
"CircleDraw" by Nate "ZombieProof"
 Created November 09, 2011.
 */

drag p1, p2, p3;

void setup() {
  size(600, 600);

  p1 = new drag(150, 300);
  p2 = new drag(450, 300);
  p3 = new drag(300, 150);
}


void draw() {
  background(200);

  // i punti
  p1.display();
  p2.display();
  p3.display();

  // il cerchio
  noFill();
  stroke(255, 200);
  strokeWeight(2);

  float[] CyR = circle3points(p1.x, p1.y, p2.x, p2.y, p3.x, p3.y);
  ellipse(CyR[0], CyR[1], CyR[2]*2, CyR[2]*2);
}

void mouseDragged() {
  if (p1.over) {
    p1.x = mouseX;
    p1.y = mouseY;
  }

  if (p2.over) {
    p2.x = mouseX;
    p2.y = mouseY;
  }

  if (p3.over) {
    p3.x = mouseX;
    p3.y = mouseY;
  }
}

