dot p;

void setup() {
  size(600, 600);
  smooth();
  frameRate(24);
  
  p = new dot(300,300, 64, color(200, 0, 0));
}

void draw(){
  background(200);
  p.display();
}

void keyPressed(){
  if(key == ' '){
    p.cambia();
  }
  
  if(key == 'd'){
    p.dx();
  }
  
  if(key == 's'){
    p.sx();
  }
  
  
}
