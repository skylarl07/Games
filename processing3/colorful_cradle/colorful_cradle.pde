int numline;
int[] arrayX;
int[] arrayY;
int[] xspeed;
int[] yspeed;
void setup(){
  size(500, 500);
  numline = 10;
  arrayX = new int[numline];
  arrayY = new int[numline];
  xspeed = new int[numline];
  yspeed = new int[numline];
  for(int i = 0; i < numline; i ++){
    arrayX[i] = (int)random(width);
    arrayY[i] = (int)random(height);
    xspeed[i] = 1;
    yspeed[i] = 3;
  }
}

void draw(){
  background(255);
  for(int i = 0; i < numline; i ++){
    if((arrayX[i] > width) || (arrayX[i] < 0)){
      xspeed[i] *= -1;
    }
    if((arrayY[i] > height) || (arrayY[i] < 0)){
      yspeed[i] *= -1;
    }
    arrayX[i] += xspeed[i];
    arrayY[i] += yspeed[i];
  }
  for(int i = 0; i < numline; i ++){
    for(int j = i +1; j < numline; j ++){
      line(arrayX[i], arrayY[i], arrayX[j], arrayY[j]);
    }
  }
}