// Cai hyperchaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 20.0;
  float w = 10.0;
  float dt = 0.001;
  float a = 27.5;
  float b = 3.0;
  float c = 19.3;
  float d = 2.9;
  float e = 3.3;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    float nw = w;
    
    x = nx + dt * (a * (ny - nx));
    y = ny + dt * (b * nx + c * ny - nx * nz + nw);
    z = nz + dt * (-d * nz + pow(ny, 2.0));
    w = nw + dt * (-e * nx);
    
    point(320 + (12 * x), 240 + (7 * y));
        
  }

}
