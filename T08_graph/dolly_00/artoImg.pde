class artoImg{
  Node from, to;
  PImage img;
  
  artoImg(String fromLabel, String toLabel, String fileName){
     from = findNode(fromLabel);
     to = findNode(toLabel);
     
     img = loadImage(fileName);
  }
  
  void display(){
    
   
    // rotazione
    float r = atan2(to.y - from.y, to.x - from.x);
    
    pushMatrix();
    translate(from.x, from.y);
    
    rotate(r - HALF_PI);
    imageMode(CENTER);
    image(img, 0 ,0);
    // rect(0,0-12,d,24);
    
    popMatrix();
    
  }
  
}


