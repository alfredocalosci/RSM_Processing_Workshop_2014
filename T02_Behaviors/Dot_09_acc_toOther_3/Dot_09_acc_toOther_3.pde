// Processing Workshop
// UNIRSM / IUAV / Design - Ottobre 2013 - Alfredo Calosci
// http://www.negot.net/RSM

// contenitore di punti
ArrayList <dot> Punti;
dot A;

void setup() {
  size(600, 600);
  smooth();
  frameRate(24);

  Punti = new ArrayList();
  dot A = new dot(random(width), random(height), 15, color(200, 0, 0));

  for (int n = 0; n<24; n++) {
    // crea un nuovo punto
    dot p = new dot(random(width), random(height), 32, color(200, 0, 0));
    // lo aggiunge al contenitore
    Punti.add(p);
  }

  // riassegna "altro"
  for (int n = 0; n<Punti.size(); n++) {
    dot p = Punti.get(n);    // lo aggiunge al contenitore
    p.altro = int(random(Punti.size()));
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
  
  fill(0,128);
  textAlign(CENTER, CENTER);
  text("press spacebar to reassign", width/2, height-20);
}

void keyPressed(){
  if(key == ' '){
    // riassegna
    for (int n = 0; n<Punti.size(); n++) {
    dot p = Punti.get(n);    // lo aggiunge al contenitore
    p.altro = int(random(Punti.size()));
  }
  }
}
