class dot {
  // lista di variabili
  PVector loc; // dove
  PVector vel; // velocita
  
  PVector acc; // accellerazione
  float vMax; // velocitá massima
  
  float w;
  color c;
  

  dot(float _x, float _y, float _w, color _c) {

    // le stesse variabili in un vettore
    loc = new PVector(_x, _y);
    vel = new PVector(0, 0);
    acc = new PVector(0.01,0.03);

    w = _w;
    c = _c;
    
    vMax = 10;
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, w, w);

    vel.add(acc); // accellera
    vel.limit(vMax); // limite di velocita
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

