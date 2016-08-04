class drag {

  float x, y, r;
  boolean over;

  drag(float _x, float _y) {
    x = _x;
    y = _y;
    r = 9;
    over = false;
  }

  void display() {

    fill(128);

    if (dist(mouseX, mouseY, x, y) < r) {
      over = true;
      fill(200,0,0);
    } 
    else {
      over = false;
      fill(128);
    }

    noStroke();
    ellipse(x, y, r*2, r*2);
  }
}

