class circle { 
  float x, y, r, r2; 
  color c;
 
  circle( float px, float py, float pr ) { 
    x = px; 
    y = py; 
    r = pr; 
    r2 = r*r; 
    
    c = color(128,64);
  }
  
  
  void display(){
    fill(c);
    noStroke();
    ellipse(x,y,r*2, r*2);
  }
  
  void move(){
    
  }
  
} 
