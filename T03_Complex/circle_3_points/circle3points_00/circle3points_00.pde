/*
"CircleDraw" by Nate "ZombieProof"
 Created November 09, 2011.
*/

float x1,y1,x2,y2,x3,y3;

void setup(){
  size(600,600);
  
  x1 = 150;
  y1 = 300;
  
  x2= 450;
  y2 = 300;
  
}


void draw(){
  background(200);
  
  x3 = mouseX;
  y3 = mouseY;
  
  // i punti
  fill(200,0,0);
  noStroke();
  ellipse(x1, y1, 12,12);
  ellipse(x2, y2, 12,12);
  ellipse(x3, y3, 12,12);
  
  // il cerchio
  noFill();
  stroke(255, 200);
  strokeWeight(2);
  
  float[] CyR = circle3points(x1,y1,x2,y2,x3,y3);
  ellipse(CyR[0], CyR[1], CyR[2]*2, CyR[2]*2);
}
