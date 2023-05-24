// Aizawa chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.01;
  float a = 0.95;
  float b = 0.7;
  float c = 0.6;
  float d = 3.5;
  float e = 0.25;
  float f = 0.1;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * ((nz - b) * nx - d * ny);
    y = ny + dt * (d * nx + (nz - b) * ny);
    z = nz + dt * (c + a * nz - pow(nz, 3.0)/3.0 - (pow(nx, 2.0) + pow(ny, 2.0)) * (1.0 + e * nz) + f * nz * pow(nx, 3.0)); 
  
    point(320 + (135 * x), 140 + (155 * z));
        
  }

}
