class dot {
  // lista di variabili
  PVector loc; // dove
  PVector vel; // velocita

  PVector acc; // accellerazione
  float vMax; // velocitá massima

  float w;
  color c;

  int altro;

  dot(float _x, float _y, float _w, color _c) {

    // le stesse variabili in un vettore
    loc = new PVector(_x, _y);
    vel = new PVector(0, 0);
    acc = new PVector(0.01, 0.03);

    w = _w;
    c = _c;

    vMax = 10;
    altro = 0;
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, w, w);


    dot altroPunto = Punti.get(altro);
    PVector altroV = new PVector(altroPunto.loc.x, altroPunto.loc.y);

    if (loc.mag() > width) {
      // se sei troppo lontano vai verso il centro
      altroV = new PVector(width/2, height/2);
    } 

    acc = PVector.sub(altroV, loc);
    acc.normalize();
    acc.mult(0.5);



    vel.add(acc); // accellera
    vel.limit(vMax); // limite di velocita
    loc.add(vel);
  }
}

