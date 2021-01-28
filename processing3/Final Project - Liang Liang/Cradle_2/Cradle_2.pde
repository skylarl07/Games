/*Create a cat’s cradle project where the points are animated 
 and move around the screen with the lines still connected.*/

//Skylar Liang

float [] cx;
float [] cy;
float [] nx;
float [] ny;
float [] kx;
float [] ky;

int delt = round(random(10, 30));
boolean movingr = true;
boolean movingdown = true;
float x = 5;

void setup() {
  size(500, 500);
  //fullScreen();
  frameRate(80);
  cx = new float[delt];
  cy = new float[delt];
  nx = new float[delt];
  ny = new float[delt];
  kx = new float[delt];
  ky = new float[delt];
  int i = 0;
  while (i < delt) {
    cx[i] = random(width);//width);
    cy[i] = random(height);//height);
    nx[i] = random(width);//width);
    ny[i] = random(height);
    kx[i] = random(width);//width);
    ky[i] = random(height);
    i ++;
  }//end of for loop, how many dots you will have on the screen
}//end of set up

void draw() {
  background(#FFFFFF);
  for (int n = 0; n < delt; n ++) {
    if (movingr) {
      if (cx[n] < nx[n]) {
        cx[n] = cx[n] + x;
      } else {
        movingr = false;
      }
    }//end of moving right
    else { //moving left
      if (cx[n] >= nx[n]) {
        cx[n] = cx[n] - x;
      } else {
        movingr = true;
      }
    }//end of moving left

    if (movingdown) {
      if (cy[n] <= ny[n]) {
        cy[n] = cy[n] + x;
      } else {
        movingdown = false;
      }
    }//end of moving down
    else {//moving up
      if (cy[n] >= ny[n]) {
        cy[n] = cy[n] - x;
      } else {
        movingdown = true;
      }
    }//end of moving up
  }//one to two moving
  for (int n = 0; n < delt; n ++) {
    if (movingr) {
      if (nx[n] < kx[n]) {
        nx[n] = nx[n] + x;
      } else {
        movingr = false;
      }
    }//end of moving right
    else { //moving left
      if (nx[n] >= kx[n]) {
        nx[n] = nx[n] - x;
      } else {
        movingr = true;
      }
    }//end of moving left

    if (movingdown) {
      if (ny[n] <= ky[n]) {
        ny[n] = ny[n] + x;
      } else {
        movingdown = false;
      }
    }//end of moving down
    else {//moving up
      if (ny[n] >= ky[n]) { //&& cy[j] >= 0){
        ny[n] = ny[n] - x;
      } else {
        movingdown = true;
      }
    }//end of moving up
  }//two to three
  for(int n = 0; n < delt; n ++){
   if(movingr){
        if(kx[n] < cx[n]){
          kx[n] = kx[n] + x;
        }
        else{
          movingr = false;
        }
      }//end of moving right
      else{ //moving left
        if(kx[n] >= cx[n]){
          kx[n] = kx[n] - x;
        }
        else{
          movingr = true;
        }
      }//end of moving left
      
      if(movingdown){
        if(ky[n] < cy[n]){
          ky[n] = ky[n] + x;
        }
        else{
          movingdown = false;
        }
      }//end of moving down
      else{//moving up
        if(ky[n] >= cy[n]){
          ky[n] = ky[n] - x; 
        }
        else{
          movingdown = true;
        }
      }//end of moving up
      } 
  for (int n = 0; n < delt; n ++) {
    for (int j = 1; j < delt; j ++) {//for inside a for is combination 
      line(cx[n], cy[n], cx[j], cy[j]);
    }//end for j
  }//end for n
}//end of draw