// pdf
import processing.pdf.*;
boolean record;

ArrayList <formichiere> zoo;

void setup() {
  size(800,800);
  smooth();
  
  // non stiamo registrando
  record = false;
  
  zoo = new ArrayList();
  
  int q = 3;
  for(int i = 0; i<q*q; i++){
    
    float fila = ceil(i/q);
    float colonna = (i%q);
    float d = width/q;
    
    float x_ignoto = colonna * d + d/2;
    float y_ignoto = fila * d + d/2;
    
    formichiere ignoto = new formichiere(x_ignoto,y_ignoto,d*0.9, color(128));
    zoo.add(ignoto);
    
  } 
}

void draw() {
  
  if (record) {
    // Note that #### will be replaced with the frame number. Fancy!
    // inizia a registrare
    beginRecord(PDF, "frame-####.pdf");
  }
  
  // disegna qualcosa qui
  background(255);
 
 // disegna gli animali dello zoo
  for(int i = 0; i<zoo.size(); i++){
    formichiere ennesimo = zoo.get(i);
    ennesimo.display();
  }
  
  if (!record) {
  fill(128);
  textAlign(CENTER,CENTER);
  text("press the spacebar to change", width/2, 25);
  text("press 's' to save a pdf", width/2, 50);
  }
  
  // finisce la registrazione
  if (record) {
    endRecord();
    record = false;
  }
}

void cambia(){
  // cambia aleatoriamente i valori delle variabili di un animale
  float valore1 = random(0.25,0.5);
  
  formichiere secondo = zoo.get(1);
  secondo.v1 = valore1;
  
}

void cambiaTutti(){
  // cambia aleatoriamente i valori delle variabili di tutti gli animali
  
  for(int i = 1; i<zoo.size(); i++){
    formichiere ennesimo = zoo.get(i);
    
    float valore1 = random(0.25,0.5);
    ennesimo.v1= valore1;
  }
  
}

void keyPressed(){
    // tasto S per registrare
    if (key == 's' || key == 'S') {
      record = true;
    }
    
    if(key == ' '){
    // succede questo ...
    cambiaTutti();
  }
  
  if(key == 'z'){
    // succede questo ...
    cambiaTutti();
  }
}
