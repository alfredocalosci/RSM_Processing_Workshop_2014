float x,y,w;

void setup(){
  size(300,300);
  smooth();
  
  // lo stesso orso
  x = 150;
  y = 150;
  w = 300;
}

void draw(){
  background(192);
  // disegna un orso
  fill(0);
  noStroke();
  // la faccia
  ellipse(x,y,w,w);
  //le orecchie
  ellipse(x-w/3,y-w/3,w/3,w/3);
  ellipse(x+w/3,y-w/3,w/3,w/3);
  // gli occhi
  fill(255);
  ellipse(x-w/6,y-w/6,w/6,w/6);
  ellipse(x+w/6,y-w/6,w/6,w/6);
  fill(0);
  ellipse(x-w/6,y-w/6,w/12,w/12);
  ellipse(x+w/6,y-w/6,w/12,w/12);
  // il muso
  fill(255);
  ellipse(x,y+w/6,w/3,w/3);
}

void mousePressed(){
  //saveFrame("fotograma.png");
}

