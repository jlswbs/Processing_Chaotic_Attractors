// Bouali type I A - chaotic attractor - based Van der Pol oscillator //

  float x = 0.01;
  float y = 0.01;
  float z = 0.0;
  float dt = 0.005;
  float a = 0.02;
  float b = 0.4;
  float c = 0.2;
  float d = 10.0;
  float e = 0.1;
  float s = 35.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (a * ny + b * nx * (c - pow(ny, 2.0)));
    y = ny + dt * (-nx + s * nz);
    z = nz + dt * (d * nx - e * ny); 
   
    point(320 + (58 * y), 240 + (1050 * z));
        
  }

}
 
