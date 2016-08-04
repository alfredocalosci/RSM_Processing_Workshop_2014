formichiere f;

import controlP5.*;
ControlP5 controlP5;

void setup(){
  size(600,600);
  smooth();
  
  f = new formichiere(300,300,500,color(200));
  
  // crea l' interfaccia
  controlP5 = new ControlP5(this);
  // aggiunge gli sliders
  // nome / min, max, valore iniziale, locX, loc:y, w, h
  controlP5.addSlider("v1",0.25,0.5,0.45,450,20,100,20);
  controlP5.addSlider("v2",0.25,0.95,0.5,450,45,100,20);
  controlP5.addSlider("v3",PI/5,PI/2.5, PI/4,450,70,100,20);
  controlP5.addSlider("v4",0.05, 0.25,0.15,450,95,100,20);
  controlP5.addSlider("v5",0.01, 0.05,0.05,450,120,100,20);
  
}

void draw(){
  background(128);
  
  f.display();
  
}

void v1(float v1) {
  f.v1 = v1;
}

void v2(float v2) {
  f.v2 = v2;
}

void v3(float v3) {
  f.v3 = v3;
}

void v4(float v4) {
  f.v4 = v4;
}

void v5(float v5) {
  f.v5 = v5;
}


