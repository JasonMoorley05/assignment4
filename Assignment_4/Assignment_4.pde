//Here's my assignment!
ArrayList<ArrayList<Integer>> level = new ArrayList<ArrayList<Integer>>();


void setup() {
  size(800, 800);

  for (int i = 0; i < 8; i++) {
    ArrayList<Integer> row = new ArrayList<Integer>();
    
    // Add values to each row
    for (int j = 0; j < 6; j++) {
      row.add(0);
    }
    
    level.add(row);
  }
  
}


void draw() {
  fill(150);
  for (int i = 0; i < level.size() ; i++){
    for (int j = 0; j < level.get(i).size(); j++){
      rect(i*100,j*100,100,100);
      
    }
  }
  
  
}
