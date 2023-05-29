// Rucklidge chaotic attractor //

  float x = 1.0;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.01;
  float a = 6.7;
  float k = 2.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (- k * nx + a * ny - ny * nz);
    y = ny + dt * (nx);
    z = nz + dt * (- nz + pow(ny, 2.0)); 
  
    point(320 + (24 * x), 240 + (34 * y));
        
  }

}
