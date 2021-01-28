//Create a yarn art/cat’s cradle project that can color in the randomly created polygons.
//Skylar Liang

/*Create a "cat's cradle" program with several points connected 
 (every point is connected to every other point by a line). */

//Skylar Liang

float [] cx;
float [] cy;
int delt = 5;//round(random(5,20));
PShape s;

void setup() {
  size(500, 500);
  //background(#000000);
  cx = new float[delt];
  cy = new float[delt];
  s = createShape();
  s.beginShape();
  s.fill(#A551C9);
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
    for(int k = 2; k < delt; k++){
      fill(random(256), random(256), random(256),25);
      triangle(cx[n], cy[n], cx[j], cy[j], cx[k], cy[k]);
    }
    }//end for j
  }//end for n
    for(int n = 0; n < delt; n ++){
    for(int j = 1; j < delt; j ++){//for inside a for is combination
          line(cx[n], cy[n], cx[j], cy[j]);

    }
    }
  //shape (s, 0, 0);
  /*color fillin = color(random(0,255));
  loadPixels();
  for(int i = 0; i < 50; i ++){
    if(pixels[i] != 0){
      pixels[i] = fillin;
    }
  }*/
  noLoop();
}//end of draw