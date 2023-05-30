// Strizhak-Kawczynski chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.08;
  float a = 150.0;
  float b = 436.6;
  float b1 = 3.714;
  float b2 = 21.7;
  float q = 0.07;
  float r = 0.101115;
  float ax1 = 10.0;
  float ax2 = 11.0;
  float ax3 = 20.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (r * (ny - (nx - ax1) * (nx - ax2) * (nx - ax3) -a));
    y = ny + dt * (b - b1 * nz - b2 * nx - ny);
    z = nz + dt * (q * (nx - nz)); 
  
    point(-430 + (55 * x), -30 + (3 * y));
        
  }

}
