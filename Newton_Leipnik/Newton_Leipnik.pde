// Newton-Leipnik chaotic attractor //

  float x = 0.349;
  float y = 0.0;
  float z = -0.16;
  float dt = 0.02;
  float a = 0.4;
  float b = 0.175;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (- a * nx + ny + 10.0 * ny * nz);
    y = ny + dt * (- nx - 0.4 * ny + 5.0 * nx * nz);
    z = nz + dt * (b * nz - 5.0 * nx * ny); 
  
    point(320 + (260 * x), 240 + (400 * y));
        
  }

}
