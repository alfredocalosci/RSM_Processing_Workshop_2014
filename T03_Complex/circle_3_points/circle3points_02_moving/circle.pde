class circle {
  float x,y,r;
  color c;
  
  dot p1, p2, p3;
  
  
  circle(){
    
    
    c = color(128,32);
    
  }
  
  void display(){
    fill(c);
    noStroke();
    ellipse(x, y, r*2, r*2);
  }
  
  void update(){
   float [] xyr = circle3points(p1.loc.x, p1.loc.y, p2.loc.x, p2.loc.y, p3.loc.x, p3.loc.y);
   x = xyr[0];
   y = xyr[1];
   r = xyr[2];
  }
}
