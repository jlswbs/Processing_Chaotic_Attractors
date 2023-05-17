// Shilnikov chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.005;
  float a = 0.71;
  float b = 1.8587;
  float c = -4.45;
  float d = 0.0511;

void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * ny;
    y = ny + dt * (nx -2.0 * pow(nx, 3.0) - a * ny + b * pow(nx, 2.0) * ny - ny * nz);
    z = nz + dt * (c * pow(nz, 2.0) + d * pow(nx, 2.0));
  
    point(320 + (250 * x), 240 + (260 * y));
        
  }

}
