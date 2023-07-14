void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(0);
  lights();
  camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  
  float sunRadius = 30;
  float planetRadius = sunRadius * 0.4;
  float planetDistanceScale = 2.0;
  
  translate(width/2, height/2, 0);
  
  pushMatrix();
  noStroke();
  fill(255, 255, 0);
  sphere(sunRadius);
  // Teks "TATA SURYA"
  fill(255);
  textSize(24);
  textAlign(CENTER);
  text("TATA SURYA", 0, sunRadius + 40);
  popMatrix();
  
  float[] planetDistances = {0, 100, 150, 200, 250, 350, 400, 450};
  float[] planetSpeeds = {0, 0.02, 0.015, 0.01, 0.008, 0.005, 0.004, 0.003};
  color[] planetColors = {color(255, 192, 203), color(200, 100, 100), color(100, 200, 100), color(100, 100, 200), color(200, 200, 100), color(200, 100, 200), color(100, 200, 200), color(200, 200, 200)};
  
  for (int i = 0; i < 8; i++) {
    pushMatrix();
    rotateY(frameCount * planetSpeeds[i]);
    translate(planetDistances[i] * planetDistanceScale, 0);
    rotateY(-frameCount * planetSpeeds[i]);
    fill(planetColors[i]);
    sphere(planetRadius);
    popMatrix();
  }
}
