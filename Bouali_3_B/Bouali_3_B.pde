// Bouali type III B - chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.005;
  float a = 3.0;
  float b = 2.2;
  float c = 0.9;
  float d = 0.002;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<1000; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (a * nx * (1.0 - ny) - b * nz);
    y = ny + dt * (-c * ny * (1.0 - pow(nx, 2.0)));
    z = nz + dt * (d * nx); 
    
    point(320 + (50 * x), 440 + (60 * -y));
        
  }

}
 
