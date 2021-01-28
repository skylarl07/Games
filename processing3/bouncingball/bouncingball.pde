//Skylar Liang
//version: 2018

int ballX;
int ballY;
int ballR = 20;


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
    if(movingdown){ // if i'm moving down
      if (movingr){ // if I'm also moving right
        if (ballX + ballR <= width){ // i haven't reached the rhs
          ballX = ballX + 2;// move ballx to the right
          ballY = ballY +2; // move bally down
         }//end of if
        else{ // i have reached the rhs
          movingr = false; // change to left
        }//end of else
      }//end of movigr if
      else{ //if i'm also moving left
        if (ballX>= width/2){ //if i haven't reach the middle
          ballX = ballX - 2;
          ballY = ballY + 2;
        }//end of if
        else{ // i reached the middle
          movingdown = false;
        }//end of else
      }
      }//else for movingdown
      
   else{// if i'm moving up
     if (!movingr){ //if i'm also moving left
       if (ballX - ballR >= 0){// i haven't reached the lhs
         ballX = ballX - 2;
         ballY = ballY - 2;
       }//end of if
       else{ //i have reached the lhs
         movingr = true;
       }// end of else
     }
     else{ // if i'm also moving right
       if (ballY >= ballR){ // if i haven't reached the middle
         ballX = ballX + 2;
         ballY = ballY - 2;
       }// end of if
       else{//if I reached the middle
         movingdown = true;
       }//end of else
     }//end of big else
   }
    
}//end of draw



//boolean notOnEdge(){ // calculates if i am at a edge
//  return () && ();