// Wang hyperchaotic attractor //

  float x = 5.0;
  float y = 1.0;
  float z = 30.0;
  float w = 1.0;
  float dt = 0.001;
  float a = 10.0;
  float b = 40.0;
  float c = 2.5;
  float d = 10.6;
  float e = 4.0;


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
    y = ny + dt * (-nx * nz + b * nx + nw);
    z = nz + dt * (-c * nz + e * pow(nx, 2.0));
    w = nw + dt * (-d * nx);

    point(320 + (15 * x), 240 + (6 * y));
        
  }

}
