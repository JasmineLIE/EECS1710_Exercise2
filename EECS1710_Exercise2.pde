PImage observatory;
PImage cracks;
PImage space;

float x1, y1, x2, y2;
float speedX1, speedX2;

void setup() {
  size(1094, 631, P2D);
  observatory = loadImage("observatory.png");
  space = loadImage("space.png");
  space.resize(space.width*(height / space.height), height);
 
 cracks = loadImage("cracks.png");
 cracks.resize(cracks.width/10, cracks.height/10);
 
 
 x2 = y1 + 5;
 y2 = y1 - 5;
 speedX1 = 0.5;
 speedX2 = speedX1 *0.25;

}

void draw() {
 
   
  for (int i=0; i<10; i++) {
    float x = random(width);
    float y = random(height);
    
     for (int j=0; j<20; j++) {
      float x2 = x + j;
      float y2 = y + j;
      float alphaVal = abs(255 - ((y2 / height) * 255));
      tint(255, alphaVal);
      image(cracks, x2, y2);


  }

}
image(space, x1, y1);

x1 += speedX1;
x2 += speedX2;


 if (x1 > 30 ||x1 < 0) {
    speedX1 *= -1;  
    speedX2 *= -1;
  }
  image(observatory, 0, 0);
}
