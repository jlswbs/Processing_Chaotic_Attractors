// Sprott-Linz N chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.01;
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
    
    x = nx + dt * (-a * ny);
    y = ny + dt * (nx + pow(nz, 2.0));
    z = nz + dt * (1.0 + ny - a * nz); 
  
    point(500 + (15 * x), 300 + (16 * y));
        
  }

}
