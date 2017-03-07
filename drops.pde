class drop{
  float x;
  float y;
  float z;
  float time;
  float changey;
  float grav;
  drop(){
    z = random(-500,500);
    x = random(-500,500);
    y = random(-1000,500);
    time = 501;
    changey = random(1.5,2);
  }
  void update(){
    if(time < 0){
      y += 0.05;
    }
    else{
      y += changey;
      changey = 1.07*changey;
      if(changey > 50){
        changey = 25;
      }
    }
    time++;
  }
  void check(){
    if(y > 200){
      y = -1000;
      x = random(-500,500);
      z = random(-500,500);
      time = 0;
      changey = random(1,3);
      grav = random(0.011,0.6);
    }
  }
  void show(){
    stroke(120,255,255);
    fill(120,255,255);
    beginShape();
    vertex(x-10,y,z+10);
    vertex(x+10,y,z+10);
    vertex(x,y-25,z);
    endShape();
    beginShape();
    vertex(x+10,y,z+10);
    vertex(x+10,y,z-10);
    vertex(x,y-25,z);
    endShape();
    beginShape();
    vertex(x-10,y,z+10);
    vertex(x-10,y,z-10);
    vertex(x,y-25,z);
    endShape();
    beginShape();
    vertex(x+10,y,z-10);
    vertex(x-10,y,z-10);
    vertex(x,y-25,z);
    endShape();
    translate(x,y,z);
    sphere(12);
    translate(-x,-y,-z);
  }
}