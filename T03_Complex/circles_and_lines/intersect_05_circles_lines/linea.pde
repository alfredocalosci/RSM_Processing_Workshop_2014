class linea{
  PVector from, to;
  color c;
  
  int count;
  
  linea(float x1, float y1, float x2, float y2){
    from = new PVector(x1, y1);
    to = new PVector(x2, y2);
    c = color(128,32);
    count = 0;
  }
  
  void display(){
    stroke(c);
    line(from.x, from.y, to.x, to.y);
    count ++;
  }
}
