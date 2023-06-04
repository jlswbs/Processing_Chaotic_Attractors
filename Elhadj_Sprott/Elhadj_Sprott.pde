// Elhadj-Sprott chaotic attractor //

  float x = 0.1;
  float y = 0.2;
  float z = 0.1;
  float dt = 0.0005;
  float a = 40.0;
  float b = 33.0;
  float c = 10.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * (ny - nx));
    y = ny + dt * (-a * nx - b * ny * nz);
    z = nz + dt * (-c + pow(ny, 2.0));
        
    point(320 + (28 * x), 240 + (12 * y));
        
  }

}
