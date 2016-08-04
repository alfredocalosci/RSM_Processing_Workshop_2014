int nodeCount; // numero di nodi
int edgeCount; // numero di aste

Node[] nodes = new Node[100];
HashMap nodeTable = new HashMap();
Edge[] edges = new Edge[500];

Node selection, exselection, nodoAttivo; 

arto braccioD;
arto braccioS;
arto tronco;

artoImg faccia;
artoImg gambaD, gambaS;

boolean mouseMode; 

void setup() {
  size(640,480);
  
  // crea lo scheletro
  nodeCount = 0;
  edgeCount = 0;
  addEdge("testa", "collo");
  addEdge("collo", "ombelico");
  addEdge("collo", "gomitoD");
  addEdge("collo", "gomitoS");
  //addEdge("gomitoD", "manoD");
  //addEdge("gomitoS", "manoS");
  addEdge("ombelico", "ginocchioD");
  addEdge("ombelico", "ginocchioS");
 // addEdge("ginocchioD", "piedeD");
  //addEdge("ginocchioS", "piedeS");
   
   // il collo corto
   edges[0].len = 30;
   
   // il corpo lungo
   // edges[1].len = 120;
   
   // corpo
   braccioD = new arto("collo", "gomitoD");
   braccioS = new arto("collo", "gomitoS");
   tronco = new arto("collo", "ombelico");
   
   faccia = new artoImg("testa", "collo", "panda.png");
   gambaD = new artoImg("ombelico", "ginocchioD", "gamba.png");
   gambaS = new artoImg("ombelico", "ginocchioS", "gamba_flip.png");
   
   mouseMode = true;
}


void draw(){
  background(200);
  
  
  // disegna lo scheletro
  for (int i = 0 ; i < edgeCount ; i++) {
    edges[i].relax();
  }
  
  for (int i = 0; i < nodeCount; i++) {
    nodes[i].relax();
  }
  
  for (int i = 0; i < nodeCount; i++) {
    nodes[i].update();
  }
  
  
  for (int i = 0 ; i < edgeCount ; i++) {
    edges[i].display();
  }
  
  for (int i = 0 ; i < nodeCount ; i++) {
    nodes[i].display();
  }
  
  // il corpo
  braccioD.display();
  braccioS.display();
  tronco.display();
  
  faccia.display();
  gambaD.display();
  gambaS.display();
  
  // mouse ?
  if(mouseMode){
    nodes[0].x = mouseX;
    nodes[0].y = mouseY;
  }
  
  fill(128);
  textAlign(CENTER, CENTER);
  text("press spacebar to lock / unlock", width/2, height-20);

}


void keyPressed(){
  if(key == ' '){
    mouseMode = ! mouseMode;
    
  }
}
