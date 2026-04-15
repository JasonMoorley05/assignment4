class Cell{
 boolean source;
 boolean n;
 boolean e;
 boolean s;
 boolean w;
 color colour;
 
 
 
 ArrayList<Integer> colours;
 
  Cell(boolean coloursource, boolean north, boolean east, boolean south, boolean west) {
    source = coloursource;
    n = north;
    e = east;
    s = south;
    w = west;
    colours = new ArrayList<Integer>();
    
  }
  
  void drawCell(int x, int y){
    int xoffset = x * 100;
    int yoffset = y * 100;
    
    colourcheck();
    
    if (n){
     rect(35 + xoffset, yoffset, 30, 35); 
    }
    if (e){
     rect(65 + xoffset, 35 + yoffset, 35, 30); 
    }
    if (s){
     rect(35 + xoffset, 65 + yoffset, 30, 35); 
    }
    if (w){
     rect(xoffset, 35 + yoffset, 35, 30); 
    }
    
    if (source) {
      ellipse(50 + xoffset, 50 + yoffset, 50, 50);
    }
    
    
  }
  
  void colourcheck(){
   if (colours.size() == 1) {
     colour = colours.get(0); 
   }
   
   
  fill(colour);
  }
  
}
