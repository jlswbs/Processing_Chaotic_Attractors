// Finance chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.01;
  float a = 0.001;
  float b = 0.2;
  float c = 1.1;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * ((1.0 / b - a) * nx + nz + nx * ny);
    y = ny + dt * (- b * ny - pow(nx, 2.0));
    z = nz + dt * (- nx - c * nz); 
  
    point(320 + (75 * x), 240 + (120 * z));
        
  }

}
