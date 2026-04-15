class Cell{
 boolean source;
 boolean n;
 boolean e;
 boolean s;
 boolean w;

 
 
 
 ArrayList<Integer> colours;
 
  Cell(boolean coloursource, boolean north, boolean east, boolean south, boolean west) {
    source = coloursource;
    n = north;
    e = east;
    s = south;
    w = west;
    colours = new ArrayList<Integer>();
  }
  
  
}
