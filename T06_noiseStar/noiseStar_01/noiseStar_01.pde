star S;

void setup(){
  size(600,600);
  S = new star(300,300,150);
}

void draw(){
  background(200);
  
  S.update();
  S.display();
}
