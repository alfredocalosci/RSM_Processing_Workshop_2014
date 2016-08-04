// contenitore di punti
ArrayList <dot> Punti;

circle A;

void setup() {
  size(600, 600);

  frameRate(24);

  Punti = new ArrayList();

  for (int n = 0; n<12; n++) {
    // crea un nuovo punto
    dot p = new dot(random(width), random(height), 15, color(200, 0, 0));
    // lo aggiunge al contenitore
    Punti.add(p);
  }
  
   A = new circle();
   A.p1 = Punti.get(0);
   A.p2 = Punti.get(1);
   A.p3 = Punti.get(2);
  
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

  // il cerchio
  A.update();
  A.display();
}


