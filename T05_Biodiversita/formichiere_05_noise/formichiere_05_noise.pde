formichiere f;
float t;

void setup(){
  size(600,600);
  smooth();
  
  f = new formichiere(300,300,500,color(128));
}

void draw(){
  background(255);
  
  // noise variations
  float n1 = noise(t,0,0);
  float n2 = noise(0,t,0);
  float n3 = noise(0,0,t);
  
  f.v1 = map(n1,0,1,0.25, 0.5);
  f.v2 = map(n2,0,1,0.25, 0.95);
  f.v3 = map(n3,0,1,PI/5, PI/2.5);
  f.v4 = map(n2,0,1,0.05, 0.25);
  f.v5 = map(n1,0,1,0.01, 0.05);
  
  t += 0.01; 
  
  f.display();
  
}



