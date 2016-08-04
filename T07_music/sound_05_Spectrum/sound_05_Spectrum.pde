// importa gli strumenti che permettono di lavorare con mp3
import ddf.minim.analysis.*;
import ddf.minim.*;

// aggiunge un "oggetto" sonoro alla lista di variabili
Minim minim;
AudioPlayer player;
// FFT permette altre analisi
FFT fftLin;

float vMax;

void setup() {
  size(512, 300);

  // crea un "oggetto" sonoro
  minim = new Minim(this);
  // importa un file mp3 (dalla cartella "data")
  // 512: dimesioni del buffer
  // il "pezzo" del file caricato in memoria e disponibile
  player = minim.loadFile("Xel.mp3", 512);

  // 
  fftLin = new FFT( player.bufferSize(), player.sampleRate() );
  // calculate the averages by grouping frequency bands linearly. use 30 averages.
  fftLin.linAverages( 24 );

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
  text(player.left.level(), 20, 20);
  textAlign(CENTER);
  text(player.mix.level(), width/2, 20);
  textAlign(RIGHT);
  text(player.right.level(), width-20, 20);

  // L and R channels
  fill(0, 64);
  noStroke();
  float LSize = map(player.left.level(), 0, 1, 1, 256);
  ellipse(width/2-30, 150, LSize, LSize);
  float RSize = map(player.right.level(), 0, 1, 1, 256);
  ellipse(width/2+30, 150, RSize, RSize);

  // buffer Size e width coincidono = 512

  stroke(255, 128);

  fill(0, 0, 255, 64);
  noStroke();

  beginShape();
  vertex(0, 0);


  for (int i = 0; i < player.bufferSize() - 1; i++) {
    float x1 = map( i, 0, player.bufferSize(), 0, width );
    //float x2 = map( i+1, 0, player.bufferSize(), 0, width );
    float y1 = map(player.left.get(i), 0, 1, 128, 0);
    vertex(x1, y1);
  }
  vertex(width, 0);
  endShape(CLOSE);

  // aggiorna i valori di fftLin
  fftLin.forward( player.mix );

  // disegna lo spettro
  // diviso in 24 sezioni > fftLin.avgSize()
  int w = int( width/fftLin.avgSize());
  fill(0, 255, 0, 64);
  for (int n = 0; n < fftLin.avgSize(); n++) {
    // il valore di ogni sezione è fftLin.getAvg(n)
    // altezza dei rettangoli
    float h = fftLin.getAvg(n)*10;
    rect(w*n, height-h, w, h);
    
    // max
  // aggiorna il valore
  if (fftLin.getAvg(n) > vMax) {
    vMax = fftLin.getAvg(n);
  }
  }

  fill(0, 128);
  textAlign(CENTER);
  text(vMax, width/2, height-20);
}

