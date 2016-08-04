dot A;

void setup(){
  size(600,600);
  smooth();
  
  A = new dot(random(width), random(height), 15, color(200,0,0));
}


void draw(){
  background(200);
  A.display();
}
