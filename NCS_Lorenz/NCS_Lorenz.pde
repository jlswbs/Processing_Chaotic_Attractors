// NCS new Lorenz chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.005;
  float a = 2.0;
  float b = 2.0;
  float c = 0.5;
  float d = 4.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (-a * nx - (b * ny * nz));
    y = ny + dt * (-nx + (c * ny));
    z = nz + dt * (d - (ny * ny) - nz);
  
    point(320 + (15 * x), 240 + (35 * y));
        
  }

}
