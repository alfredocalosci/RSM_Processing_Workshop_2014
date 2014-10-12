orso M,L,XL;

void setup(){
  size(800,450);
   
  M = new orso(width/5, height/2, 60,color(0));
  L = new orso(width/5*2, height/2, 120,color(0));
  XL = new orso(width/5*4, height/2, 240,color(0));
  
  textAlign(CENTER,CENTER);
  textSize(16);
}

void draw(){
  background(128);
  
  M.draw();
  L.draw();
  XL.draw();
  
  text("M", M.x, height/10*9);
  text("L", L.x, height/10*9);
  text("XL", XL.x, height/10*9);
  
}

void keyPressed(){
  M.grid = !M.grid;
  L.grid = !L.grid;
  XL.grid = !XL.grid;
}
