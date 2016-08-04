class dot {
  // lista di variabili
  float x, y, w;
  color c;


  dot(float _x, float _y, float _w, color _c) {
    x = _x;
    y = _y;
    w = _w;
    c = _c;
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(x,y,w,w);
  }
}

