PImage img;
// The next line is needed if running in JavaScript Mode with Processing.js
/* @pjs preload="obama-portrait.jpg"; */ 

void setup() {
  img = loadImage("obama-portrait.jpg");
  //img = loadImage("http://1.bp.blogspot.com/-ChsCUtVAXvk/T6xEBwOzcDI/AAAAAAAAMis/OxIf62Ip3Ck/s1600/sanmarino.jpg");
  size(img.width, img.height);
}

void draw() {
  background(255);
  image(img,0,0);
  
}


