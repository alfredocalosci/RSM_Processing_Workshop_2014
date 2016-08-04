class star{
  
  float x,y,r;
  int num;
  
  float t;
  color c;
  float d;
  
  star(float _x, float _y, float _r){
    x = _x;
    y = _y;
    r = _r;
    
    c = color(255,32);
    num = 36;
    d = r/4;
  }
  
  void display(){
    noStroke();
    fill(200,0,0);
    
    // trigonom
    float aa = TWO_PI / num;
    
    for(int n = 0; n<num; n++){
      float a = aa*n;
      float xp = x + cos(a)*(r+d/2);
      float yp = y + sin(a)*(r+d/2);
      
      ellipse(xp, yp, 5,5);
      
      a+= aa/2;
      float xpi = x + cos(a)*(r-d/2);
      float ypi = y + sin(a)*(r-d/2);
      ellipse(xpi, ypi, 5,5);
    }
    
    
    fill(c);
    ellipse(x,y,r*2,r*2);
    
  }
  
  void update(){
    
  }
  
}
