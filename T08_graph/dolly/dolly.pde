int nodeCount; // numero di nodi
int edgeCount; // numero di aste

Node[] nodes = new Node[100];
HashMap nodeTable = new HashMap();
Edge[] edges = new Edge[500];

Node selection, exselection, nodoAttivo; 

void setup() {
  size(640,480);
  
  // crea lo scheletro
  nodeCount = 0;
  edgeCount = 0;
  
  addEdge("testa", "collo"); // 0
  addEdge("collo", "ombelico"); // 1
  addEdge("collo", "gomitoD"); // 2
  addEdge("collo", "gomitoS");
  addEdge("gomitoD", "manoD");
  addEdge("gomitoS", "manoS");
  addEdge("ombelico", "ginocchioD");
  addEdge("ombelico", "ginocchioS");
  addEdge("ginocchioD", "piedeD");
  addEdge("ginocchioS", "piedeS");
  
  /*
  addEdge("a","b");
  addEdge("b","c");
  addEdge("b","d");
  addEdge("d","e");
  */
   
   // il collo corto
   edges[0].len = 30; // la prima asta
   
   // il corpo lungo
   edges[1].len = 120;
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
  
  
  
}



