// Skylar Liang

float ballX;
float ballY;
float ballR = 30;
float y = 3*sin(PI/11);
float x = 3*cos(PI/11);


void setup(){
  size(500,500);
  ballX = width/2;
  ballY = ballR;
}

boolean movingr = true;
boolean movingdown = true;

void draw(){
   background(#4A84F5);
   fill(#E54343);
   ellipse(ballX, ballY, 2*ballR, 2*ballR);
   
    if(movingr){ //moing right
      if(ballX + ballR <= width){ //i haven't reach the rhs
        ballX = ballX + x;
      }
      else{ //i have reached the rhs
        movingr = false;
    }
    }
    else{ //moving left
      if(ballX - ballR >=0){//if i haven't reach the lhs
        ballX = ballX - x;
      }
      else{
        movingr = true;
      }
    }
    
    
    
    if(movingdown){
      if(ballY + ballR <= height){ //i haven't reach the bottom
        ballY = ballY + y;
      }
      else{ //i have reached the rhs
        movingdown = false;
    }
    }
    else{
      if(ballY - ballR >=0){//if i haven't reach the top
        ballY = ballY - y;
      }
      else{
        movingdown = true;
      }
    } 
}//end of draw