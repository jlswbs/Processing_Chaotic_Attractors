// Wang chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.005;
  float a = 0.977;
  float b = 10.0;
  float c = 4.0;
  float d = 0.1;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * (nx - ny) - ny * nz);
    y = ny + dt * (- b * ny + nx * nz);
    z = nz + dt * (- c * nz + d * nx + nx * ny);
  
    point(320 + (11 * x), 240 + (11 * y));
        
  }

}
