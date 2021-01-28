//Skylar Liang 

float X = 50;
float Y = 50;
float R = 100;
float a = 5;
float key1;
float key2;
float key3;
float key4;

void setup(){
  size(500,500);
  background(#2169FF);
  frameRate(120);
}

void draw(){
  background(#2169FF);
  fill(#ED2BA6);
  rectMode(CENTER);
  rect(X, Y, R, R);
  
  if (keyPressed){
    if(keyCode == UP && Y - R/2 >0){ // i haven't reach the top
      Y = Y - a;
    }
    else if(keyCode == DOWN && Y+R/2<height){ // iahaven't reach the bottom
      Y = Y + a;
    }
    else if(keyCode == RIGHT && X+R/2<width){ //haven't reach the rhs
      X = X + a;
    }
    else if(keyCode == LEFT && X-R/2 >0){// haven't reach the lhs
      X = X - a;
    } 
    }
}