// 3-layer chaotic attractor //

  float x = -0.04;
  float y = -15.8;
  float z = -1.4;
  float dt = 0.002;
  float a1 = -4.1;
  float a2 = 1.2;
  float a3 = 13.45;
  float b = 0.161;
  float c = 3.5031;
  float c1 = 2.76;
  float c2 = 0.6;
  float c3 = 13.3;
  float d = 1.6;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (a1 * nx - a2 * ny + a3 * nz);
    y = ny + dt * (-d * nx * nz + b);
    z = nz + dt * (c1 * nx * ny + c2 * ny * nz + c3 * nz + c);
    
    point(320 + (105 * x), 2055 + (105 * y));
        
  }

}
