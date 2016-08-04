// LINEAS ENTRE CIRcULOS EN INTERSECCION (CASEY REAS)

float[] x, y;
float[] vx, vy;

void setup() {
  size(600, 600);
  
  x = new float[100];
  y = new float[x.length];
  vx = new float[x.length];
  vy = new float[x.length];
  
  for (int n = 0; n < x.length; n++) {
  x[n] = random(width);
  y[n] = random(width);
  vx[n] = random(-2, 2);
  vy[n] = random(-2, 2);
  }
  background(255);
}

void draw() {
  for (int n = 0; n < x.length; n++) {
  x[n] = x[n] + vx[n];
  y[n] = y[n] + vy[n];
  if (x[n] > width-50 || x[n] < 50) { // || significa OR
    vx[n] = vx[n] * -1;
  }
  if (y[n] > height-50 || y[n] < 50) {
    vy[n] = vy[n] * -1;
  }
  //ellipse(x[n], y[n], 100, 100);
  }
  
  // Averigua si hay colisión entre cada una de las 
  // circunferencias con el resto. Si hay intersección, 
  // dibuja la línea que une los centros.
  
  for (int n = 0; n < x.length; n++) {  // circulo n
  for (int m = 0; m < x.length; m++) { // circulo m
    float d = dist(x[n], y[n], x[m], y[m]);
    if (dist(x[n], y[n], x[m], y[m]) < 50 + 50)  {
      stroke(100, 100-d);
      line(x[n], y[n], x[m], y[m]);
    }
  }
  }
  fill(255, 10);
  rect(0, 0, width, height);
}
