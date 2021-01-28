//Create a yarn art/cat’s cradle project that can color in the randomly created polygons.
//Skylar Liang

float [] cx;
float [] cy;
float [] nx;
float [] ny;
int delt = round(random(5,20));
PShape s;

void setup() {
  size(500, 500);
  //background(#000000);
  cx = new float[delt];
  cy = new float[delt];
  s = createShape();
  s.beginShape();
  s.fill(random(256), random(256), random(256), 50);
  int i = 0;
  while (i < delt) {
    cx[i] = random(width);
    cy[i] = random(height);
    s.vertex(cx[i],cy[i]);
    i ++;
  }//end of for loop, how many dots you will have on the screen
  s.endShape(CLOSE);
}//end of set up

void draw() {
  for(int n = 0; n < delt; n ++){
    for(int j = 1; j < delt; j ++){//for inside a for is combination 
      line(cx[n], cy[n], cx[j], cy[j]);
    }//end for j
  }//end for n
  shape (s, 0, 0);
}//end of draw