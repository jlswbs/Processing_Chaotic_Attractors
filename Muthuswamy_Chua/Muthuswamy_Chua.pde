// Muthuswamy-Chua chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.01;
  float a = 0.6;


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
    y = ny + dt * (-(nx / 3.0) + (ny / 2.0) - ((ny * pow(nz, 2.0)) / 2.0));
    z = nz + dt * (ny - a * nz - ny * nz);
  
    point(190 + (130 * x), 270 + (130 * y));
        
  }

}
