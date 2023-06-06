// Sprott-Linz J chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.006;
  float a = 2.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (a * nz);
    y = ny + dt * (-a * ny + nz);
    z = nz + dt * (-nx + ny + pow(ny, 2.0)); 
  
    point(150 + (15 * x), 270 + (42 * y));
        
  }

}
