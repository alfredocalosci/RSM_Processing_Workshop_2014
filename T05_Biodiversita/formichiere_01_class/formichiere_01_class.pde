formichiere f;

void setup(){
  size(600,600);
  smooth();
  
  f = new formichiere(300,300,500,color(128));
}

void draw(){
  background(255);
  
  f.display();
}
