// New chaotic jerk system - J.C.Sprott //

  float x = 0.0;
  float y = 0.4;
  float z = 0.0;
  float dt = 0.005;
  float a = 0.026;
  float b = 0.000000001;


void setup() {
  
  size(640, 480);
  background(255);
  
}
 

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (ny);
    y = ny + dt * (nz);
    z = nz + dt * (-nz - nx - b * (exp(ny / a) - 1.0));
  
    point(430 + (190 * x), 280 + (220 * y));

  }

}
