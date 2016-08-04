class circle { 
  
  PVector loc; // dove
  PVector vel; // velocita
  
  float x, y, r, r2; 
  color c;
 
  circle( float px, float py, float pr ) { 
    loc = new PVector(px, py);
    vel = new PVector(random(3), random(3));
    r = pr; 
    r2 = r*r; 
    
    c = color(128,64);
  }
  
  
  void display(){
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y,r*2, r*2);
  }
  
  void move(){
     loc.add(vel);
     
     // non uscire
    if ((loc.x + r > width) || (loc.x < r)) {
      vel.x = vel.x * -1;
    }
    if ((loc.y + r > height) || (loc.y < r)) {
      vel.y = vel.y * -1;
    }
  }
 
  
} 
