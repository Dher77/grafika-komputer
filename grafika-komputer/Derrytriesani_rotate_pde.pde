float rotationSpeed = 0.05;

void setup() {
  size(400, 400, P3D);
}

void draw() {
  background(255);
  
  translate(width/2, height/2);
  
  float rotationAngle = frameCount * rotationSpeed;
  
  pushMatrix();
  rotate(rotationAngle);
  fill(255, 165, 0);
  box(100);
  
  translate(0, 0, 50);
  
  fill(0);
  textAlign(CENTER, CENTER);
  text("Derry", 0, 0);
  popMatrix();
  
  pushMatrix();
  rotate(rotationAngle);
  translate(width/3.5, 0);
  fill(255, 255, 0);
  ellipse(0, 0, 100, 100);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Trie", 0, 0);
  popMatrix();
  
  pushMatrix();
  rotate(rotationAngle);
  translate(width/2, 0);
  fill(255, 182, 193);
  triangle(-40, 50, 0, -50, 50, 50);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Sani", 0, 0);
  popMatrix();
}
