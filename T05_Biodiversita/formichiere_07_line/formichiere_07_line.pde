ArrayList <formichiere> zoo;
float t;

void setup(){
  size(600,600);
  zoo = new ArrayList();
  t = 0;
  
  int q = 3;
  for(int i = 0; i<q; i++){
    
    float x_ignoto = (width/q)*i + (width/q)/2;
    formichiere ignoto = new formichiere(x_ignoto,300,(width/q)*0.9, color(128));
    zoo.add(ignoto); 
  } 
  
}


void draw(){
  background(255);
  
  float n1 = noise(t);
  // n1 > prodotto da noise, oscilla tra 0 e 1;
  float valore1 = map(n1,0,1,0.25,0.5);
  
  formichiere primo = zoo.get(0);
  primo.v1 = valore1;
  
  // disegna gli animali dello zoo
  for(int i = 0; i<zoo.size(); i++){
    formichiere ennesimo = zoo.get(i);
    ennesimo.display();
  }
  
  t += 0.01;
  
  fill(128);
  textAlign(CENTER,CENTER);
  text("press the spacebar", width/2, height-25);
}

void cambia(){
  // cambia aleatoriamente i valori delle variabili di un animale
  float valore1 = random(0.25,0.5);
  
  formichiere secondo = zoo.get(1);
  secondo.v1 = valore1;
  
}

void keyPressed(){
  if(key == ' '){
    // succede questo ...
    cambia();
  }
}
