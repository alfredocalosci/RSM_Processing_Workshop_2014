circle A, B;

void setup(){
  size(600,600);
  A = new circle( 300, 300, 150 ); 
  B = new circle( 300, 300, 80 ); 
}

void draw(){
  background(200);
  
  A.x = mouseX; 
  A.y = mouseY; 
  
  A.display();
  B.display();
  
  intersect( A, B ); 
  
}


void intersect( circle cA, circle cB ) { 
 
  float dx = cA.x - cB.x; 
  float dy = cA.y - cB.y; 
  float d2 = dx*dx + dy*dy; 
  float d = sqrt( d2 ); 
 
  if ( d>cA.r+cB.r || d<abs(cA.r-cB.r) ) return; // no solution 
  
  float a = (cA.r2 - cB.r2 + d2) / (2*d); 
  float h = sqrt( cA.r2 - a*a ); 
  float x2 = cA.x + a*(cB.x - cA.x)/d; 
  float y2 = cA.y + a*(cB.y - cA.y)/d; 
 
  noStroke(); 
  fill(0); 
  rect( x2, y2, 5, 5 ); 
 
  float paX = x2 + h*(cB.y - cA.y)/d; 
  float paY = y2 - h*(cB.x - cA.x)/d; 
  float pbX = x2 - h*(cB.y - cA.y)/d; 
  float pbY = y2 + h*(cB.x - cA.x)/d; 
 
  ellipse( paX, paY, 10, 10 ); 
  ellipse( pbX, pbY, 10, 10 ); 
 
} 
