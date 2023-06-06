// Sprott-Linz P chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.01;
  float a = 2.7;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (a * ny + nz);
    y = ny + dt * (-nx + pow(ny, 2.0));
    z = nz + dt * (nx + ny); 
    
    point(180 + (200 * x), 290 + (210 * y));
        
  }

}
