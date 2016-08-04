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

void mouseMoved(){
  S.r = map(mouseX, 0, width, 50,300);
  S.num = int(map(mouseY,0,height, 4,48));
}
