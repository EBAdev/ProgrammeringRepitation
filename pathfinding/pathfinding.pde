int L;
int W;
int n = 500;
int islandSize = 10;
int counter = 0;
PVector prevPos = new PVector();

ArrayList <PVector> n_loc = new ArrayList<PVector>(); 
ArrayList <PVector> path = new ArrayList<PVector>(); 
void setup() {
  size(600, 400);
  W = width;
  L = height-20;

  for (int i =0; i<n; i++) {
    PVector loc = new PVector(random(width), random(20, height-20));
    n_loc.add(loc);
  }

  background(0, 200, 0);
  fill(0, 0, 255);
  rect(0, 10, W, L);

  ellipseMode(CENTER);
  for (int i = 0; i<n_loc.size(); i++) {
    PVector loc = n_loc.get(i);
    fill(255);
    ellipse(loc.x, loc.y, islandSize, islandSize);
  }
}


void draw() {
  if (path.size() == 0) {
    prevPos.x = floor(random(width));
  }

  for (int i = 0; i<n_loc.size(); i++) {
    PVector pos = n_loc.get(i);
    PVector possiblePath = PVector.sub(prevPos, pos);
    if (possiblePath.mag() <= 30) {
      path.add(pos);
      prevPos.set(pos.x, pos.y);
      fill(0);
      ellipse(pos.x, pos.y, islandSize, islandSize);
      counter = 0;
    } else {
      counter++;
    }
  }
  if (counter > n_loc.size()) {
    path.clear();
    counter = 0;
  }
}
