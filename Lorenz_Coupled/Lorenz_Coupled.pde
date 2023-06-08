// Coupled-Lorenz chaotic attractor //

  float x1 = 0.1;
  float y1 = 0.1;
  float z1 = 0.1;
  float x2 = 0.0;
  float y2 = 0.0;
  float z2 = 0.0;
  float dt = 0.002;
  float b = 8.0 / 3.0;
  float o = 10.0;
  float r1 = 35.0;
  float r2 = 0.02;
  float e = 2.85;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx1 = x1;
    float ny1 = y1;
    float nz1 = z1;
    
    float nx2 = x2;
    float ny2 = y2;
    float nz2 = z2;
        
    x1 = nx1 + dt * (o * (ny1 - nx1));
    y1 = ny1 + dt * (r1 * nx1 - ny1 - nx1 * nz1);
    z1 = nz1 + dt * (-b * nz1 + nx1 * ny1);
        
    x2 = nx2 + dt * (o * (ny2 - nx2) + e * (nx1 - nx2));
    y2 = ny2 + dt * (r2 * nx2 - ny2 - nx2 * nz2);
    z2 = nz2 + dt * (-b * nz2 + nx2 * ny2); 
  
    point(320 + (15000 * y2), 240 + (50 * x2));
        
  }

}
