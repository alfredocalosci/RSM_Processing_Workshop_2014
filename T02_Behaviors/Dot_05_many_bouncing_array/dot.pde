class dot {
  // lista di variabili
  float x, y, w;
  color c;

  float vx, vy; // velocità

  // scia
  int num = 18;
  float mx[] = new float[num];
  float my[] = new float[num];


  dot(float _x, float _y, float _w, color _c) {
    x = _x;
    y = _y;
    w = _w;
    c = _c;

    vx = 1+ random(3);
    vy = 1+ random(3);
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

    // scia: valori
    int which = frameCount % num;
    mx[which] = x;
    my[which] = y;

    // scia: disegna
    for (int i = 0; i < num; i++) {
      // which+1 is the smallest (the oldest in the array)
      int index = (which+1 + i) % num;
      float dd = map(i,0,num, 3, w); // dd > dimensioni
      float a = map(i,0,num, 5, 128); // alpha > trasparenza
      fill(c,a);
      ellipse(mx[index], my[index], dd, dd);
    }
  }
}

