// esistono oggetti della classe Orso
orso Bruno;

void setup(){
  size(300,300);
  smooth();
  
  // creo un Orso
  Bruno = new orso();
  
}

void draw(){
  background(192);
  
  // disegna l'orso "Bruno"
  Bruno.draw();
}

void mousePressed(){
  //saveFrame("fotograma.png");
}

