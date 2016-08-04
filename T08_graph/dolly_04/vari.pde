Node findNode(String label) {
  label = label.toLowerCase();
  Node n = (Node) nodeTable.get(label);
  if (n == null) {
    return addNode(label);
  }
  return n;
}

Node addNode(String label) {

  Node n = new Node(label);  
  if (nodeCount == nodes.length) {
    nodes = (Node[]) expand(nodes);
  }
  
  nodeTable.put(label, n);
  nodes[nodeCount++] = n;  
  return n;
 
}

void addEdge(String fromLabel, String toLabel) {

  Node from = findNode(fromLabel);
  Node to = findNode(toLabel);
  
  for (int i = 0; i < edgeCount; i++) {
    if (edges[i].from == from && edges[i].to == to) {
      return;
    }
  } 
  
  float T = 4;
  Edge e = new Edge(from, to, 60, T);
  
  if (edgeCount == edges.length) {
    edges = (Edge[]) expand(edges);
  }
  edges[edgeCount++] = e;
}



void mousePressed() {
  // Ignore anything greater than this distance
  float closest = 20;
  
  for (int i = 0; i < nodeCount; i++) {
    Node n = nodes[i];
    float d = dist(mouseX, mouseY, n.x, n.y);
    if (d < closest) {
      //
      selection = n;
      closest = d;
    }
  }
  
  if (selection != null){
    // && !selection.label.equals(nodoAttivo.label)
    
    String aa = selection.label;
    String bb;
    if (nodoAttivo != null){
       bb = nodoAttivo.label;
    } else {
       bb = "";
    }
    
    if(! aa.equals(bb)){
    // e diverso
    // select this
    if (mouseButton == LEFT) {
       if (nodoAttivo != null) {
         exselection = nodoAttivo;
       }
       
      nodoAttivo = selection;
      nodoAttivo.fixed = true;
    
      // la catena
      // findCatena(nodoAttivo.label);
      
      
    } else if (mouseButton == RIGHT) {
      //selection.fixed = false;
      
    }
    
    }
   }
}

void mouseDragged() {
  if (selection != null) {
    selection.x = mouseX;
    selection.y = mouseY;
  }
}

void mouseReleased() {
  selection = null;
}
