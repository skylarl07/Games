//Skylar Liang

float R = random(0,255);
float G = random(0,255);
float B = random(0,255);
int lineX;
int lineY;

void setup(){
  size (500,500);
}


void draw(){
  background(R,G,B);
  line(lineX, 0, lineX, height);
  line(0, lineY, width, lineY);
  if(lineX < mouseX){ // i haven't reach the mouseX
    lineX = lineX + 4;
  }
  else if (lineX > mouseX){ //I reached the mouseX
    lineX = lineX - 4;
  }
  if(abs(lineX - mouseX) <= 4){
    lineX = mouseX;
  }
  if(lineY < mouseY){
    lineY = lineY + 4;
  }
  else if (lineY > mouseY){
    lineY = lineY - 4;
  }
  if (abs(lineY - mouseY) <=4){
    lineY = mouseY;
  }
}

void mousePressed() {
  R = random(0,255);
  G = random(0,255);
  B = random(0, 255);
}