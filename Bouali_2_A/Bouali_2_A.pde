// Bouali type II A - chaotic attractor - based Lotka-Voltera oscillator //

  float x = 1.0;
  float y = 1.0;
  float z = 0.0;
  float dt = 0.005;
  float a = 4.0;
  float b = 1.0;
  float c = 1.4;
  float s = 2.8;
  float alpha = 1.0;
  float beta = 1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (nx * (a - ny) + alpha * nz);
    y = ny + dt * (-ny * (b - pow(nx, 2.0)));
    z = nz + dt * (-nx * (c - s * nz) - beta * nz); 
    
    point(365 + (60 * x), 450 + (19 * -y));
        
  }

}
 
