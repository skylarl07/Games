/* Create a cat’s cradle project where the user can move the points around 
 the window by clicking and dragging them (the lines should still be connected). */

//Skylar Liang 
float [] cx;
float [] cy;
int delt = round(random(5, 20));
boolean drag = false;

void setup() {
  size(500, 500);
  //background(#FFFFFF);
  cx = new float[delt];
  cy = new float[delt];
  int i = 0;
  while (i < delt) {
    cx[i] = random(width);
    cy[i] = random(height);
    i ++;
  }//end of for loop, how many dots you will have on the screen
}//end of set up

void draw() {
  background(#FFFFFF);
  for (int n = 0; n < delt; n ++) {
    for (int j = 1; j < delt; j ++) {//for inside a for is combination 
      line(cx[n], cy[n], cx[j], cy[j]);
    }//end for j
  }//end for n
}//end of draw


void mouseDragged() {
    for (int n = 0; n < delt; n ++) {
      if (abs(cx[n] - mouseX) < 10 && abs(cy[n] - mouseY) <10) {
        cx[n] = mouseX;
        cy[n] = mouseY;
        println(n);
      }//end of inner if
    }//end of loop
}//end of mouse dragged