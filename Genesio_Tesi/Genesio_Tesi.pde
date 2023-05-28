// Genesio-Tesi chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.01;
  float a = 0.44;
  float b = 1.1;
  float c = 1.0;


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
    z = nz + dt * (- c * nx - b * ny - a * nz + pow(nx, 2.0)); 
  
    point(210 + (290 * x), 190 + (250 * y));
        
  }

}
