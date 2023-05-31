// Lu-Chen chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 2.0;
  float dt = 0.01;
  float a = -10.0;
  float b = -4.0;
  float c = 18.1;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (- ((a * b * nx) / (a + b)) - ny * nz + c);
    y = ny + dt * (a * ny + nx * nz);
    z = nz + dt * (b * nz + nx * ny);
  
    point(310 + (12 * x), 210 + (10 * y));
        
  }

}
