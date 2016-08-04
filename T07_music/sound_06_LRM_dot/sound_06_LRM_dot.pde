// importa gli strumenti che permettono di lavorare con mp3
import ddf.minim.*;

// aggiunge un "oggetto" sonoro alla lista di variabili
Minim minim;
AudioPlayer player;

float vMax;

dot L, R, M;

void setup() {
  size(512, 300);
frameRate(24);
  // crea un "oggetto" sonoro
  minim = new Minim(this);
  // importa un file mp3 (dalla cartella "data")
  player = minim.loadFile("Xel.mp3");

  // fa suonare il file
  player.play();

  vMax = 0;

  L = new dot(width/2, height/2, 24, color(200, 0, 0, 128));
  R = new dot(width/2, height/2, 24, color(0, 200, 0, 128));
  M = new dot(width/2, height/2, 48, color(0, 0, 200, 128));
}


void draw() {
  background(200);

  // L and R channels
  
  float Lw = map(player.left.level(), 0, 1, 24, 256);
  float Rw = map(player.right.level(), 0, 1, 24, 256);
  float Mw = map(player.mix.level(), 0, 1, 24, 256);

  L.w = Lw;
  R.w = Rw;
  M.w = Mw;

  L.display();
  R.display();
  M.display();
}

