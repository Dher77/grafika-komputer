void setup(){
  size(500,500,P3D);
}

void draw(){
  background(100);
  float boxSize = 200;
  translate(width/2, height/2, 0);
  rotateX(mouseY * 0.02);
  rotateY(mouseX * 0.02);
  box(boxSize);
}
