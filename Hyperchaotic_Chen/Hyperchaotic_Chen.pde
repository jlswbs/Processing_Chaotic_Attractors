// Yang-Chen hyperchaotic attractor //

  float x = 5.0;
  float y = 1.0;
  float z = 30.0;
  float w = 1.0;
  float dt = 0.001;
  float a = 35.0;
  float b = 3.0;
  float c = 35.0;
  float d = 8.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    float nw = w;
    
    x = nx + dt * (a * (ny - nx));
    y = ny + dt * (c * nx - nx * nz + nw);
    z = nz + dt * (-b * nz + nx * ny);
    w = nw + dt * (-d * nx);
    
    point(320 + (10 * x), 240 + (6 * y));
        
  }

}
