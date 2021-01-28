/*Create a "cat's cradle" program with several points connected 
 (every point is connected to every other point by a line). */

//Skylar Liang

float [] cx;
float [] cy;
int delt = round(random(5,20));


void setup() {
  size(500, 500);
  //background(#000000);
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
  for(int n = 0; n < delt; n ++){
    for(int j = 1; j < delt; j ++){//for inside a for is combination 
      line(cx[n], cy[n], cx[j], cy[j]);
    }//end for j
  }//end for n
}//end of draw