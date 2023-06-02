// ACT chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.01;
  float a = 1.8;
  float b = -0.07;
  float d = 1.5;
  float m = 0.02;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * (nx - ny));
    y = ny + dt * (- 4.0 * a * ny + nx * nz + m * pow(nx, 3.0));
    z = nz + dt * (- d * a * nz + nx * ny + b * pow(nz, 2.0)); 
  
    point(320 + (24 * x), 240 + (7 * y));
        
  }

}
