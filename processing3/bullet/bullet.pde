/*Create a program that allows the user to move a shape around 
 the window with the arrow keys. When the mouse is pressed, 
 the player should fire a "bullet" to the mouse's position.*/

//Skylar Liang 
float X = 50;
float Y = 50;
float R = 100;
float a = 5;
PImage img;
PImage img1;
float endx;
float endy;
float startx = X;
float starty = Y;
boolean isfired = false;
float xspeed = 5;
float yspeed = 5;
float r = 5;

void setup() {
  size(500, 500);
  background(#2169FF);
  frameRate(120);
  img = loadImage("unicorn.png");
  rectMode(CENTER);
  imageMode(CENTER);
  img1 = loadImage("boom.png");
}

void draw() {
  background(#2169FF);
  image(img, X, Y, R, R);

  if (keyPressed) { //happened every time you pressed and allows you to keep holding
    if (keyCode == UP) { // i haven't reach the top
      Y = Y - a;
    } else if (keyCode == DOWN) { // iahaven't reach the bottom
      Y = Y + a;
    } else if (keyCode == RIGHT) { //haven't reach the rhs
      X = X + a;
    } else if (keyCode == LEFT) {// haven't reach the lhs
      X = X - a;
    } 
    if (Y + R/2 == 0) { //down reach top
      Y = height + R/2; //top reach down
    } else if (Y - R/2 == height) {
      Y = 0 - R/2;
    }
    if (X - R/2 == width) {
      X = 0 - R/2;
    } else if (X + R/2 == 0) {
      X = width + R/2;
    }
  }
  if (isfired) {//fired
    rect(startx, starty, 10, 10);
    if (startx < endx) {//need to move to the right
      //startx = startx + r* cos(angle);
      startx += xspeed;
    } else if (startx > endx) {
      //startx = startx - r* cos(angle);
      startx -= xspeed;
    }
    if (starty < endy) {
      //starty = starty + r* sin(angle);
      starty += yspeed;
    } else if (starty > endy) {
      //starty = starty - r* sin(angle);
      starty -= yspeed;
    }
    if (abs(startx - endx) <= xspeed || abs(starty - endy) <= yspeed) {
      startx = endx;
      starty = endy;
      isfired = false;
      image(img1, endx, endy, R, R);
    }
  } // end of isfired
}

void mousePressed() {
  // set isFired to true
  isfired = true;
  // set startX, startY
  startx = X;
  starty = Y;
  // set endX, endY
  endx = mouseX;
  endy = mouseY;
  //r = dist(startx, starty, endx, endy);
  xspeed = r * abs(startx - endx)/dist(startx, starty, endx, endy);
  /* the function is the cos and sin of that angle. in order to calculate distance,
  you have to create a similar triangle so that it could have the same angle as the
  real triangle. since xspeed works in draw and works similar to a loop, it allows 
  you to be able to add a "r" each time, which is a constant. thus, it controls the 
  speed of the moving bullet. if r is small, that means the base triangle will have 
  less distance(r) increase everytime, however, increase in the same ratio.
  */
  yspeed = r * abs(starty - endy)/dist(startx, starty, endx, endy);
}