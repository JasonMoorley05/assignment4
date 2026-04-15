//Here's my assignment!
ArrayList<ArrayList<Cell>> level = new ArrayList<ArrayList<Cell>>();


void setup() {
  
  size(800, 800);
  background(150);
  
  for (int i = 0; i < 8; i++) {
    ArrayList<Cell> row = new ArrayList<Cell>();
    
    // Add values to each row
    for (int j = 0; j < 6; j++) {
      Cell c = new Cell(false, false, false, false, false);
      row.add(c);
    }
    
    level.add(row);
  }
  
  level.get(2).get(0).colours.add(color(255,0,0));
  level.get(2).get(0).s = true;
  level.get(5).get(0).s = true;
  level.get(5).get(0).colours.add(color(0,0,255));
  level.get(2).get(0).source = true;
  level.get(5).get(0).source = true;
  
}


void draw() {
  drawbackground();
  for (int i = 0; i < level.size() ; i++){
    for (int j = 0; j < level.get(i).size(); j++){
      level.get(i).get(j).drawCell(i, j);
    }
  }
}

void drawbackground() {
  stroke(0);
  strokeWeight(2);
  for (int i = 0; i < level.size() ; i++){
    for (int j = 0; j < level.get(i).size(); j++){
      fill(200);
      rect(i*100,j*100,100,100);
    }
  }
  
}
