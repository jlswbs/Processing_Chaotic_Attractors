// Sprott-Linz S chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.004;
  float a = 4.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (-nx - a * ny);
    y = ny + dt * (nx + pow(nz, 2.0));
    z = nz + dt * (1.0 + nx); 
  
    point(470 + (90 * x), 150 + (125 * y));
        
  }

}
