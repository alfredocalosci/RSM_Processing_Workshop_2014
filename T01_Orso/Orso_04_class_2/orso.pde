class orso {
  // lista di variabili
  float x, y, w;
  color c;

  // "costruttore" della classe orso
  // assegna un valore alle variabili
  orso(float _x, float _y, float _w, color _c) {
    x = _x;
    y = _y;
    w = _w;
    c = _c;
  }

  // cose che si possono far fare a un orso
  void draw() {
    // disegna un orso
    fill(c);
    noStroke();
    // la faccia
    ellipse(x, y, w, w);
    //le orecchie
    ellipse(x-w/3, y-w/3, w/3, w/3);
    ellipse(x+w/3, y-w/3, w/3, w/3);
    // gli occhi
    fill(255);
    ellipse(x-w/6, y-w/6, w/6, w/6);
    ellipse(x+w/6, y-w/6, w/6, w/6);
    fill(c);
    ellipse(x-w/6, y-w/6, w/12, w/12);
    ellipse(x+w/6, y-w/6, w/12, w/12);
    // il muso
    fill(255);
    ellipse(x, y+w/6, w/3, w/3);
  }
}

