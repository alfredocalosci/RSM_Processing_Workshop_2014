// Code from Visualizing Data, First Edition, Copyright 2008 Ben Fry.
// Based on the GraphLayout example by Sun Microsystems.


class Edge {
  Node from;
  Node to;
  
  float len;
  float linea;
  color edgeC;

  Edge(Node from, Node to, float _len, float _linea) {
    this.from = from;
    this.to = to;
    this.len = _len;
    this.linea = _linea;
    this.edgeC = 128;  
  }
  
  void relax() {
    float vx = to.x - from.x;
    float vy = to.y - from.y;
    float d = mag(vx, vy);
    if (d > 0) {
      float f = (len - d) / (d * 3);
      float dx = f * vx;
      float dy = f * vy;
      to.dx += dx;
      to.dy += dy;
      from.dx -= dx;
      from.dy -= dy;
    }
  }


  void display() {
    stroke(edgeC);
    strokeWeight(linea);
    line(from.x, from.y, to.x, to.y);
  }
}
