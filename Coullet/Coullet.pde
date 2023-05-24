// Coullet chaotic attractor //

  float x = 0.1;
  float y = 0.41;
  float z = 0.31;
  float dt = 0.01;
  float a = 0.8;
  float b = -1.1;
  float c = -0.45;
  float d = -1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (ny);
    y = ny + dt * (nz);
    z = nz + dt * (a * nx + b * ny + c * nz + d * pow(nx, 3.0)); 
  
    point(320 + (190 * x), 240 + (150 * y));
        
  }

}
