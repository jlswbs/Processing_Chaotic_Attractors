// Lorenz C chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.008;
  float h = 0.0;
  float a = 12.0;
  float b = 28.0;
  float c = 6.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    h = sqrt(pow(x, 2.0) + pow(y, 2.0));
    
    x = nx + dt * ((-a * pow(nx, 3.0) + (2.0 * a + b - nz) * pow(nx, 2.0) * ny + (a - 2.0) * nx * pow(ny, 2.0) + (nz - b) * pow(ny, 3.0)) / (2.0 * (pow(nx, 2.0) + pow(ny, 2.0))));
    y = ny + dt * (((b - nz) * pow(nx, 3.0) + (a - 2.0) * pow(nx, 2.0) * ny + (-2 * a - b + nz) * nx * pow(ny, 2.0) - a * pow(ny, 3.0)) / (2.0 * (pow(nx, 2.0) + pow(ny, 2.0))));
    z = nz + dt * ((2.0 * pow(nx, 3.0) * ny - 2.0 * nx * pow(ny, 3.0)) - c * nz);
  
    point(320 + (52 * x), 240 + (37 * y));
        
  }

}
