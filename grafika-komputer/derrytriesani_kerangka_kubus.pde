void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(255);
  noFill();
  
  float fov = PI / 3.0;
  float cameraZ = (height / 2.0) / tan(fov / 2.0);
  
  perspective(fov, float(width) / float(height), cameraZ / 10.0, cameraZ * 10.0);
  
  translate(250, 250, 0);
  rotateX(PI / 6);
  rotateY(PI);
  
  float boxSize = 200;
  float halfBoxSize = boxSize / 2.0;
  

  PVector[] vertices = new PVector[8];
  vertices[0] = new PVector(-halfBoxSize, -halfBoxSize, -halfBoxSize);
  vertices[1] = new PVector(halfBoxSize, -halfBoxSize, -halfBoxSize);
  vertices[2] = new PVector(halfBoxSize, -halfBoxSize, halfBoxSize);
  vertices[3] = new PVector(-halfBoxSize, -halfBoxSize, halfBoxSize);
  vertices[4] = new PVector(-halfBoxSize, halfBoxSize, -halfBoxSize);
  vertices[5] = new PVector(halfBoxSize, halfBoxSize, -halfBoxSize);
  vertices[6] = new PVector(halfBoxSize, halfBoxSize, halfBoxSize);
  vertices[7] = new PVector(-halfBoxSize, halfBoxSize, halfBoxSize);
  
 
  int[][] edges = {
    {0, 1},
    {1, 2},
    {2, 3},
    {3, 0},
    {4, 5},
    {5, 6},
    {6, 7},
    {7, 4},
    {0, 4},
    {1, 5},
    {2, 6},
    {3, 7}
  };
  

  for (int i = 0; i < edges.length; i++) {
    int[] edge = edges[i];
    PVector v1 = vertices[edge[0]];
    PVector v2 = vertices[edge[1]];
    line(v1.x, v1.y, v1.z, v2.x, v2.y, v2.z);
  }
}
