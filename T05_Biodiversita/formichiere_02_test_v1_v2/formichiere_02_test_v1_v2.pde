formichiere f;

void setup(){
  size(600,600);
  smooth();
  
  f = new formichiere(300,300,500,color(128));
}

void draw(){
  background(255);
  
  f.display();
  
  fill(255,0,0);
  
  float s_zampe_max = f.w*3/4 - (f.v1*f.w/2);
  float s_zampe_x = f.x + f.w/2 - s_zampe_max/2;
    
  ellipse(s_zampe_x, f.y+f.w/2, 12, 12);
  ellipse(f.x - f.w/4, f.y+f.w/2, 12, 12);
}

void mouseMoved(){
  float newV1 = map(mouseY, 0, height, 0.25, 0.5);
  f.v1 = newV1;
  
  float newV2 = map(mouseX, 0, width, 0.25, 0.95);
  f.v2 = newV2;
}
