class DFS{
  ArrayList<Node> nodes;
  ArrayList<Edge> edges;
  
  DFS(ArrayList<Node> nodes, ArrayList<Edge> edges){
    this.nodes = nodes;
    this.edges = edges;
  }
  
  void colorNode(){
    //Hint -- 1 is the root 
    for(int i = 0; i<nodes.size(); i++){
      //Color node of name 1 
      if(int(nodes.get(i).name) == 8){
        color c =  color(255,0,0);
        nodes.get(i).fillColor = c; //this changes the color 
      }
      //Now how would you color the rest of the nodes to be in BFS colors?
     if(int(nodes.get(i).name)== 9|| ((int(nodes.get(i).name)>10) && (int(nodes.get(i).name) <13))){
        color c = color(0,255,0);
        nodes.get(i).fillColor=c;
      }
      if(int(nodes.get(i).name)== 10|| ((int(nodes.get(i).name)>12) && (int(nodes.get(i).name) <15))){
        color c = color(0,0,255);
        nodes.get(i).fillColor=c;
      }
    }
    
  }
}
