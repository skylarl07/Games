//Skylar Liang 

float X = 50;
float Y = 50;
float R = 150;
float a = 5;
float key1;
float key2;
float key3;
float key4;
PImage img;

void setup(){
  size(500,500);
  background(#2169FF);
  frameRate(120);
  img = loadImage("unicorn.png");
}

void draw(){
  background(#2169FF);
  rectMode(CENTER);
  image(img, X, Y, R, R);
  
  if (keyPressed){ //happened every time you pressed and allows you to keep holding
    if(keyCode == UP){ // i haven't reach the top
      Y = Y - a;
    }
    else if(keyCode == DOWN){ // iahaven't reach the bottom
      Y = Y + a;
    }
    else if(keyCode == RIGHT){ //haven't reach the rhs
      X = X + a;
    }
    else if(keyCode == LEFT){// haven't reach the lhs
      X = X - a;
    } 
    if(Y + R/2 == 0){ //down reach top
      Y = height + R/2; //top reach down
    }
    else if (Y - R/2 == height){
      Y = 0 - R/2;
    }
    if(X - R/2 == width){
      X = 0 - R/2;
    }
    else if (X + R/2 == 0){
      X = width + R/2;
    }
    }
}