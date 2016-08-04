class arto{
  Node from, to;
  
  arto(String fromLabel, String toLabel){
     from = findNode(fromLabel);
     to = findNode(toLabel);
     
  }
  
  void display(){
    
    fill(128,0,0);
    noStroke();
    
    ellipse(from.x, from.y, 24, 24);
    ellipse(to.x, to.y, 24,24);
    
    // distanza
    float d = dist(from.x, from.y, to.x, to.y);
    
    // rotazione
    float r = atan2(to.y - from.y, to.x - from.x);
    
    pushMatrix();
    translate(from.x, from.y);
    
    rotate(r);
    rect(0,0-12,d,24);
    
    popMatrix();
    
  }
  
}


