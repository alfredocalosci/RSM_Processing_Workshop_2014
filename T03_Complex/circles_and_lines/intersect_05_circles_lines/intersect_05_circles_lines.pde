circle A, B, C;
ArrayList <linea> Linee;

void setup() {
  size(600, 600);

  A = new circle( 300, 300, 150 ); 
  B = new circle( 300, 300, 80 );
  C = new circle( 300, 300, 120 );

  Linee = new ArrayList();
  
}

void draw() {
  background(200);

  A.move();
  B.move();
  C.move();

  //A.display();
  //B.display();

  intersect( A, B );
  intersect( A, C );
  intersect( B, C );


  for (int n = 0; n<Linee.size(); n++) {
    // prende un punto dal contenitore
    linea L = Linee.get(n);
    // lo disegna sullo schermo
    L.display();
    // scadenza
    if(L.count > 8*60){
      Linee.remove(n);
    }
  }
}


void intersect( circle cA, circle cB ) { 

  float dx = cA.loc.x - cB.loc.x; 
  float dy = cA.loc.y - cB.loc.y; 
  float d2 = dx*dx + dy*dy; 
  float d = sqrt( d2 ); 

  if ( d>cA.r+cB.r || d<abs(cA.r-cB.r) ) return; // no solution 

    float a = (cA.r2 - cB.r2 + d2) / (2*d); 
  float h = sqrt( cA.r2 - a*a ); 
  float x2 = cA.loc.x + a*(cB.loc.x - cA.loc.x)/d; 
  float y2 = cA.loc.y + a*(cB.loc.y - cA.loc.y)/d; 

  noStroke(); 
  fill(0); 
  //rect( x2, y2, 5, 5 ); 

  float paX = x2 + h*(cB.loc.y - cA.loc.y)/d; 
  float paY = y2 - h*(cB.loc.x - cA.loc.x)/d; 
  float pbX = x2 - h*(cB.loc.y - cA.loc.y)/d; 
  float pbY = y2 + h*(cB.loc.x - cA.loc.x)/d; 

  //ellipse( paX, paY, 10, 10 ); 
  //ellipse( pbX, pbY, 10, 10 );

  //stroke(128, 32);
  //line(paX, paY, pbX, pbY);
  linea L = new linea(paX, paY, pbX, pbY);
  Linee.add(L);
  
} 

