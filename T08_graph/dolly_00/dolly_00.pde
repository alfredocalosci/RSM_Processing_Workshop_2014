int nodeCount; // numero di nodi
int edgeCount; // numero di aste

Node[] nodes = new Node[100];
HashMap nodeTable = new HashMap();
Edge[] edges = new Edge[500];

Node selection, exselection, nodoAttivo; 

arto braccio; // aggiungo un arto alla lista di ingredienti

void setup() {
  size(640,480);
  
  // crea lo scheletro
  nodeCount = 0;
  edgeCount = 0;
  
  addEdge("a","b");
  addEdge("a","c");
  addEdge("a","d");
  
  // copre lo scheletro
  braccio = new arto("a","b"); // creo il nuovo arto
  
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
  
  // display
  braccio.display();

}


