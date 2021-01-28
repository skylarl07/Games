//Skylar Liang

/* global variables to keep track of the amount of red, green and blue (respectively) in the background */

int r, g, b;

/* setup the window with an initial background color of black */

void setup(){
  size(300, 300);
  r = 0;
  g = 0;
  b = 0;
  background(r, g, b);
}

/* update the background color */

void draw(){
  background(r, g, b);

}
/* DO NOT MODIFY ANY CODE ABOVE THIS LINE */
/* allows the user to increase and decrease the values of r, g and b */
void keyPressed(){
    if(key == 'w' && r <= 255){
      r = r + 5;
    }
    else if(key == 's' && r >= 0){
      r = r - 5;
    }
    else if(key == 'q' && r <= 255){
      g = g + 5;
    }
    else if(key == 'e' && r >= 0){
      g = g - 5;
    }
    else if(key == 'a' && r <= 255){
      b = b + 5;
    }
    else if(key == 'd' && r >= 0){
      b = b - 5;
    }
  }