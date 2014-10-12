void setup(){
  size(300,300);
  smooth();
}

void draw(){
  background(192);
  // disegna un orso
  fill(0);
  noStroke();
  // la faccia
  ellipse(150,150,300,300);
  //le orecchie
  ellipse(50,50,100,100);
  ellipse(250,50,100,100);
  // gli occhi
  fill(255);
  ellipse(100,100,50,50);
  ellipse(200,100,50,50);
  fill(0);
  ellipse(100,100,25,25);
  ellipse(200,100,25,25);
  // il muso
  fill(255);
  ellipse(150,200,100,100);
}

void mousePressed(){
  //saveFrame("fotograma.png");
}

