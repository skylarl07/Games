/* Create a program that will produce a checkerboard pattern using loops. 
Allow the user to increase and decrease the number of columns by pressing 
the right and left arrows, respectively. Allow the user to increase and 
decrease the number of rows by pressing the up and down arrows, respectively. */

void setup(){
  size(500, 500);
//frameRate(2);
}
float a = 8;
float b = 8;
float x;
//float y;
//float n = 0;


void draw(){
  //background(255);
  //if(n % 2 == 0){//even
    for(float y = 0; y < height; y = y + 2* height/b){
      fill(#000000);//black first
      noStroke();
      rect(x,y, width/a, height/b);
    }
    for(float y = height/b; y < height; y = y + 2* height/b){
      fill(#FFFFFF);
      noStroke();
      rect(x,y, width/a, height/b);
    }
    x = x + width/a;
  //  n = n + 1;
  //}
  //else if(n % 2 == 1){//odd
    for(float y = 0; y < height; y = y + 2* height/b){
      fill(#FFFFFF);//white first
      noStroke();
      rect(x,y,width/a, height/b);
    }
    for(float y = height/b; y < height; y = y + 2* height/b){
      fill(#000000);
      noStroke();
      rect(x,y,width/a, height/b);
    }
    x = x + width/a;
   // n = n + 1;
  //}
}

void keyPressed(){
  if(keyCode == UP){
    x = 0;
    b++;
  }
  if(keyCode == RIGHT){
    x = 0;
    a++; // a = a + 1 -> a += 1;
    //print(b);
  }
  if(keyCode == LEFT){
    x = 0;
    a --;
  }
  if(keyCode == DOWN){
    x= 0;
    b --;
  }
}