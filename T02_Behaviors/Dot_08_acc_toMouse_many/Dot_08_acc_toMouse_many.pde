// contenitore di punti
ArrayList <dot> Punti;

void setup() {
  size(600, 600);
  smooth();
  frameRate(24);

  Punti = new ArrayList();

  for (int n = 0; n<24; n++) {
    // crea un nuovo punto
    dot p = new dot(random(width), random(height), 32, color(200, 0, 0));
    // lo aggiunge al contenitore
    Punti.add(p);
  }
}

void draw() {
  background(200);
  // mostra tutti i punti
  for (int n = 0; n<Punti.size(); n++) {
    // prende un punto dal contenitore
    dot p = Punti.get(n);
    // lo disegna sullo schermo
   p.display();
  }
}

