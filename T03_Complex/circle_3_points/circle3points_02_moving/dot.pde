class dot {
  // lista di variabili
  PVector loc; // dove
  PVector vel; // velocita
  
  float w;
  color c;


  dot(float _x, float _y, float _w, color _c) {

    // le stesse variabili in un vettore
    loc = new PVector(_x, _y);
    vel = new PVector(random(3), random(3));

    w = _w;
    c = _c;
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, w, w);

    loc.add(vel);

    // non uscire
    if ((loc.x > width) || (loc.x < 0)) {
      vel.x = vel.x * -1;
    }
    if ((loc.y > height) || (loc.y < 0)) {
      vel.y = vel.y * -1;
    }
  }
}

