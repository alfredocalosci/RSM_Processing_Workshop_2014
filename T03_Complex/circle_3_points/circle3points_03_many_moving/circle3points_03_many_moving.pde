// contenitore di punti
ArrayList <dot> Punti;
ArrayList <circle> Cerchi;

void setup() {
  size(600, 600);

  frameRate(24);

  Punti = new ArrayList();
  Cerchi = new ArrayList();

  for (int n = 0; n<12; n++) {
    // crea un nuovo punto
    dot p = new dot(random(width), random(height), 15, color(200, 0, 0));
    // lo aggiunge al contenitore
    Punti.add(p);
  }
  
  for (int i = 0; i<6; i++) {
    circle c = new circle();
    c.p1 = Punti.get(floor(random(0,4)));
    c.p2 = Punti.get(floor(random(5,8)));
    c.p3 = Punti.get(floor(random(9,12)));
    Cerchi.add(c);
  }
 
}


void draw() {
  background(200);

  // i punti
  // mostra tutti i punti
  for (int n = 0; n<Punti.size(); n++) {
    // prende un punto dal contenitore
    dot p = Punti.get(n);
    // lo disegna sullo schermo
   p.display();
  }

 // i cerch
  for (int i = 0; i<Cerchi.size(); i++) {
    // prende un punto dal contenitore
    circle c = Cerchi.get(i);
    // lo disegna sullo schermo
    c.update();
   c.display();
  }
}


