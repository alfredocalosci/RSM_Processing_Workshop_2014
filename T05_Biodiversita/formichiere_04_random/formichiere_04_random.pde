formichiere f;

void setup(){
  size(600,600);
  smooth();
  
  f = new formichiere(300,300,500,color(128));
}

void draw(){
  background(255);
  
  f.display();
  
  fill(128);
  textAlign(CENTER,CENTER);
  text("press the spacebar", width/2, height-25);
}

void randomize_f(){
  //f.w = random(300,500);
  f.v1 = random(0.25, 0.5);
  f.v2 = random(0.25, 0.95);
  f.v3 = random(PI/5, PI/2.5);
  f.v4 = random(0.05, 0.25);
  f.v5 = random(0.01, 0.05);
}

void keyPressed(){
  if(key == ' '){
    randomize_f();
  }
}
