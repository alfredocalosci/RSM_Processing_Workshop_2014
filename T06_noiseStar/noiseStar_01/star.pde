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
    d = r/3;
  }
  
  void display(){
    noStroke();
    
    // trigonom
    float aa = TWO_PI / num;
    fill(200,0,0, 64);
    
    for(int n = 0; n<num; n++){
      
      float a = aa*n;
      float dd = map(noise(t), 0,1, 0, d/2);
      
      float xp = x + cos(a)*(r+dd);
      float yp = y + sin(a)*(r+dd);
      
      
      ellipse(xp, yp, 5,5);
      
      a+= aa/2;
      float xpi = x + cos(a)*(r-dd);
      float ypi = y + sin(a)*(r-dd);
      ellipse(xpi, ypi, 5,5);
    }
    
    
    fill(c);
    ellipse(x,y,r*2,r*2);
    
    t+=0.1;
    
  }
  
  void update(){
    
  }
  
}
