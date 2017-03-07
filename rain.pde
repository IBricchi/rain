import peasy.*;

PeasyCam cam;

drop[] drops = new drop[50];

void setup(){
  size(400,400, P3D);
  colorMode(HSB);
  cam = new PeasyCam(this, 500);
  for(int i = 0; i < drops.length; i++){
    drops[i] = new drop();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < drops.length; i++){
    drops[i].update();
    drops[i].check();
    drops[i].show();
  }
}