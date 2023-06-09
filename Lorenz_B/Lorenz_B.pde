// Lorenz B chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.008;
  float h = 0.0;
  float a = 10.0;
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
    
    x = nx + dt * ((-(a + 1.0) * nx + (a - b + nz) * ny) / 3.0 + ((1.0 - a) * (pow(nx, 2.0) - pow(ny, 2.0)) + 2.0 * (b + a - nz) * nx * ny) / (3.0 * h));
    y = ny + dt * (((b - a - nz) * nx - (a + 1.0) * ny) / 3.0 + (2.0 * (a - 1.0) * nx * ny + (b + a - nz) * (pow(nx, 2.0) - pow(ny, 2.0))) / (3.0 * h));
    z = nz + dt * ((3.0 * pow(nx, 2.0) * ny - pow(ny, 3.0)) / 2.0 - c * nz);
  
    point(340 + (28 * x), 280 + (23 * y));
        
  }

}
