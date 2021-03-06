class dot {
  // lista di variabili
  float x, y, w;
  color c;

  float vx, vy; // velocità

  dot(float _x, float _y, float _w, color _c) {
    x = _x;
    y = _y;
    w = _w;
    c = _c;

    vx = random(3);
    vy = random(3);
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(x, y, w, w);

    x += vx;
    y += vy;

    // non uscire
    if ((x > width) || (x < 0)) {
      vx = vx * -1;
    }
    if ((y > height) || (y < 0)) {
      vy = vy * -1;
    }
  }
}

