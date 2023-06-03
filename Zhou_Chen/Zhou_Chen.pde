// Zhou-Chen chaotic attractor //

  float x = 3.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.001;
  float a = 2.97;
  float b = 0.15;
  float c = -3.0;
  float d = 1.0;
  float e = -8.78;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * nx + b * ny + ny * nz);
    y = ny + dt * (c * ny - nx * nz + d * ny * nz);
    z = nz + dt * (e * nz - nx * ny);
        
    point(320 + (6 * x), 240 + (2 * y));
        
  }

}
