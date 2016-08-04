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
  //ellipse(s_zampe_x, f.y+f.w/2, 12, 12);
  ellipse(f.x, f.y+f.w/2, 12, 12);
  float x_orecchia = f.x + (cos(PI+f.v3) * f.w/2);
  float y_orecchia = f.y+f.w/2 + (sin(PI+f.v3) * f.w/2);
  stroke(255,0,0);
  line(f.x, f.y+f.w/2, x_orecchia, y_orecchia);
}

void mouseMoved(){
  float newV3 = map(mouseX, 0, width, PI/5, PI/2.5);
  f.v3 = newV3;
  
  float newV5 = map(mouseY, 0, height, 0.01, 0.05);
  f.v5 = newV5;
}
