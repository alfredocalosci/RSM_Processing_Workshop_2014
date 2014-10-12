/* Processing Workshop
UNIRSM / IUAV / Design - Ottobre 2013 - Alfredo Calosci
http://www.negot.net/RSM */

// esistono oggetti della classe Orso
orso Bruno, Mario;

void setup(){
  size(600,600);
  smooth();
  
  // creo un Orso
  Bruno = new orso(50,50,50, color(200,0,0));
  Mario = new orso(300,300,400, color(0));
  
}

void draw(){
  background(192);
  
  // disegna l'orso "Bruno"
  Bruno.draw();
  Mario.draw();
}

void mousePressed(){
  //saveFrame("fotograma.png");
}

