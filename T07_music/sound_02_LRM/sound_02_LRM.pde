// importa gli strumenti che permettono di lavorare con mp3
import ddf.minim.*;

// aggiunge un "oggetto" sonoro alla lista di variabili
Minim minim;
AudioPlayer player;

float vMax;

void setup() {
  size(512, 300);

  // crea un "oggetto" sonoro
  minim = new Minim(this);
  // importa un file mp3 (dalla cartella "data")
  player = minim.loadFile("Xel.mp3");

  // fa suonare il file
  player.play();
  
  vMax = 0;
}


void draw() {
  background(200);

  //valori in uscita nei due canali
  // player.left.level()
  // player.right.level()

  // somma dei canali
  //player.right.level();
  
  // scrive i valori in uscita
  fill(0);
  textAlign(LEFT);
  text(player.left.level(), 20,20);
  textAlign(CENTER);
  text(player.mix.level(), width/2,20);
  textAlign(RIGHT);
  text(player.right.level(), width-20,20);
  
  // max
  // aggiorna il valore
  if(player.mix.level() > vMax){
    vMax = player.mix.level();
  }
  
  
  fill(0,128);
  textAlign(CENTER);
  text(vMax, width/2,height-20);
  
  
  // L and R channels
  fill(0,64);
  noStroke();
  float LSize = map(player.left.level(),0,1,1,256);
  ellipse(width/2-30,150, LSize, LSize);
  float RSize = map(player.right.level(),0,1,1,256);
  ellipse(width/2+30,150, RSize, RSize);
  
}

