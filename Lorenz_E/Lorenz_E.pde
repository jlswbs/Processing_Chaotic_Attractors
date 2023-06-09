// Lorenz E chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.001;
  float a = 0.9;
  float b = 5.0;
  float c = 9.9;
  float d = 1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (-a * nx + pow(ny, 2.0) - pow(nz, 2.0) + a * c);
    y = ny + dt * (nx * (ny - b * nz) + d);
    z = nz + dt * (-nz + nx * (b * ny + nz));
  
    point(320 + (35 * x), 220 + (18 * y));
        
  }

}
