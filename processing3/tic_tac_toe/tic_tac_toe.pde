//Skylar Liang

char[][] ttt;
char input = 'X';
int positionX;
int positionY;
int n;
boolean title;
boolean arrow;
boolean player1; //contorls the print in winner check
boolean end;
boolean tie;
float p;

void setup() {
  size(500, 500);
  ttt = new char[3][3];
  initialize();
}//end of setup

void initialize() {
  n = 0;
  title = true;
  arrow = true;
  player1 = true;
  end = false;
  tie = false;
  p = random(0, 100);
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      ttt[i][j] = ' ';
    }//end of j for
  }//end of i for
}

void draw() {
  if (title) { //title page
    background(#37E3BF);
    textSize(50);
    fill(#FFFFFF);
    textAlign(CENTER);
    text("Tic Tac Toe", width/2, 150);
    textSize(30);
    text("One player", width/2, 300);
    text("Two players", width/2, 400);
    if (arrow) { //one player
      fill(#E337DB);
      text(">>", width/2 - (4*30), 300); 
      if (keyCode == ENTER) {
        title = false;
      } else if (keyCode == DOWN) {
        arrow = false;
      }
    }//end of arrow
    else if (!arrow) {//two player
      fill(#E337DB);
      text(">>", width/2 - (4*30), 400);
      if (keyCode == ENTER) {
        title = false;
      } else if (keyCode == UP) {
        arrow = true;
      }
    }//end of selection
  }//end of if

  else if (!title && !arrow) { //two players mode
    fill(#000000);
    background(200, 230, 250);
    textAlign(LEFT, TOP);
    textSize(150);
    stroke(100);
    for (int i = 0; i < 3; i++) {
      line(i * (width/3), 0, i* (width/3), height);
      for (int j = 0; j < 3; j++) {
        text(ttt[i][j], i * width/3, j* height/3 + 10);
        line(0, j* (height/3), width, j* (height/3));
      }//end of j for
    }//end of i for
  }//end of two plauers

  else if (!title && arrow) { //one player mode
    fill(#000000);
    background(200, 230, 250);
    textAlign(LEFT, TOP);
    textSize(150);
    stroke(100);
    for (int i = 0; i < 3; i++) {
      line(i * (width/3), 0, i* (width/3), height);
      for (int j = 0; j < 3; j++) {
        text(ttt[i][j], i * width/3, j* height/3 + 10);
        line(0, j* (height/3), width, j* (height/3));
      }//end of j for
    }//end of i for
  }//end of one player

  if (end) {//game end
    if (player1 && !tie) {
      fill(#F70C0C);
      textAlign(CENTER);
      textSize(50);
      text("Player 1 Won!", width/2, height/2);
      textSize(30);
      text("(click 'space' to restart)", width/2, height/2 + 50);
    } else if (!player1 && !tie) {
      fill(#F70C0C);
      textAlign(CENTER);
      textSize(50);
      text("Player 2 Won!", width/2, height/2);
      textSize(30);
      text("(click 'space' to restart)", width/2, height/2 + 50);
    } else if (tie) {
      fill(#F70C0C);
      textAlign(CENTER);
      textSize(100);
      text("Tie!", width/2, height/2);
      textSize(30);
      text("(click 'space' to restart)", width/2, height/2 + 50);
    }
  }


  if (!title && !end && arrow) {//one player computer mode
    if (n == 1 && ttt[1][1] == 'X') {//step one 01, user go center
      if (p <= 25) { 
        ttt[0][0] = 'O';
        WinnerCheck(0, 0, 'O');
      } else if (p > 25 && p <= 50) {
        ttt[2][0] = 'O';
        WinnerCheck(2, 0, 'O');
      } else if (p > 50 && p <= 75) {
        ttt[0][2] = 'O';
        WinnerCheck(0, 2, 'O');
      } else if (p > 75 && p <= 100) {
        ttt[2][2] = 'O';
        WinnerCheck(2, 2, 'O');
      }
      n ++;
    }//end of step one 01
    else if (n == 1 && ttt[1][1] == ' ') {//user to other place
      ttt[1][1] = 'O';
      WinnerCheck(1, 1, 'O');
      n ++;
    }

    if (n == 3) {//move 2, 
      if (!twoinarow('O') && !twoinarow('X')) {
        if (ttt[0][0] == ' ' && ttt[2][0] == ' ' && ttt[0][2] == ' ' && ttt[2][2] == ' ') {
          //none of in corner
          if (ttt[0][1] == 'X' && ttt[1][2] == 'X') {
            ttt[0][2] = 'O';
            WinnerCheck(0, 2, 'O');
          } else if (ttt[2][1] == 'X' && ttt[1][2] == 'X') {
            ttt[2][2] = 'O';
            WinnerCheck(2, 2, 'O');
          } else if (ttt[0][1] == 'X' && ttt[1][0] == 'X') {
            ttt[0][0] = 'O';
            WinnerCheck(0, 0, 'O');
          } else if (ttt[1][0] == 'X' && ttt[2][1] == 'X') {
            ttt[2][0] = 'O';
            WinnerCheck(2, 0, 'O');
          }
        }//end of corner
        else if (ttt[0][0] == 'X' || ttt[2][0] == 'X' || ttt[0][2] == 'X' || ttt[2][2] == 'X') {
          if (ttt[0][0] == ' ') { 
            ttt[0][0] = 'O';
            WinnerCheck(0, 0, 'O');
          } else if (ttt[0][2] == ' ') {
            ttt[0][2] = 'O';
            WinnerCheck(0, 2, 'O');
          } else if (ttt[2][0] == ' ') {
            ttt[2][0] = 'O';
            WinnerCheck(2, 0, 'O');
          } else if (ttt[2][2] == ' ') {
            ttt[2][2] = 'O';
            WinnerCheck(2, 2, 'O');
          }
        }
      }
      n ++;
    }//end of 3

    if (n == 5) {//move 3
      if (!twoinarow('O') && !twoinarow('X')) {
        int num = 0;
        int space = (int)random(4);
        for (int i = 0; i < 3; i ++) {
          for (int j = 0; j < 3; j ++) {
            if (ttt[i][j] == ' ') {
              if (num == space) {
                ttt[i][j] = 'O';
                WinnerCheck(i, j, 'O');
              }
              num ++;
            }
          }
        }
      }
      n++;
    }
    if (n == 7) {
      if (!twoinarow('O') && !twoinarow('X')) {
        int num = 0;
        int space = (int)random(2);
        for (int i = 0; i < 3; i ++) {
          for (int j = 0; j < 3; j ++) {
            if (ttt[i][j] == ' ') {
              if (num == space) {
                ttt[i][j] = 'O';
                WinnerCheck(i, j, 'O');
              }
              num ++;
            }
          }
        }
      }
      n ++;
    }
  }
}//end of draw

void mousePressed() {
  if (!title && !end) {//two player mode
    positionX = mouseX/ (width/3);
    positionY = mouseY/ (height/3);
    if (n % 2 == 0 && n <= 9) {//even
      if (ttt[positionX][positionY] == ' ') {
        ttt[positionX][positionY] = 'X';
        WinnerCheck(positionX, positionY, 'X');
        n ++;
      }//end of position if
    }//even if end
    else if (n % 2 == 1 && n <= 9 && !arrow) { //odd
      if (ttt[positionX][positionY] == ' ') {
        ttt[positionX][positionY] = 'O';
        WinnerCheck(positionX, positionY, 'O');
        n ++;
      }//end of if
    }//end of else
  }//end of two players
}//end of mouse pressed


void WinnerCheck(int x, int y, char p) {
  if (horiz (x, y, p) || vert (x, y, p) || diag (p)) {
    if (p == 'X') {
      player1 = true;
    } else {
      player1 = false;
    }
    end = true;
  } else if (n == 8) { 
    tie = true;
    end = true;
  }
}//end of WinnerCheck

boolean horiz(int x, int y, char p) {
  boolean winner = true;
  for (int i = 1; i < 3; i ++) {
    winner &= ttt[(x + i) % 3][y] == p;
  }
  return winner;
}

boolean vert(int x, int y, char p) {
  boolean winner = true;
  for (int j = 1; j < 3; j ++) {
    winner &= ttt[x][(y + j) % 3] == p;
  }
  return winner;
}

boolean diag(char p) {
  boolean winner = true;
  boolean dia = true;
  for (int i = 0; i < 3; i ++) {
    winner &= ttt[i][i] == p;
    dia &= ttt[i][2 - i] == p;
  }
  return winner || dia;
}

void keyPressed() {
  if (key == ' ' && end) {
    initialize();
  }
}//end of key pressed


boolean twoinarow(char p) {
  return horiz2(p) || vert2(p) || diag2(p);
}//end of two in a role

boolean diag2(char p) {
  if (ttt[0][0] == p && ttt[1][1] == p && ttt[2][2] == ' ') {
    ttt[2][2] = 'O';
    WinnerCheck(2, 2, 'O');
    return true;
  }
  if (ttt[2][2] == p && ttt[1][1] == p && ttt[0][0] == ' ') {
    ttt[0][0] = 'O';
    WinnerCheck(0, 0, 'O');
    return true;
  }
  if (ttt[2][0] == p && ttt[1][1] == p && ttt[0][2] == ' ') {
    ttt[0][2] = 'O';
    WinnerCheck(0, 2, 'O');
    return true;
  }
  if (ttt[0][2] == p && ttt[1][1] == p && ttt[2][0] == ' ') {
    ttt[2][0] = 'O';
    WinnerCheck(2, 0, 'O');
    return true;
  }
  return false;
}

boolean horiz2(char p) {
  int numX= 0;
  int openR = -1;
  int openC = -1;
  for (int row = 0; row < 3; row++) {
    for (int col = 0; col < 3; col++) {
      if (ttt[col][row] == p) {
        numX++;
      } else if (ttt[col][row] == ' ') {
        openR = row;
        openC = col;
      }
    }
    if (numX == 2 && openR != -1) {
      ttt[openC][openR] = 'O';
      WinnerCheck(openC, openR, 'O');
      return true;
    }
    numX= 0;
    openR = -1;
    openC = -1;
  }
  return false;
}

boolean vert2(char p) {
  int numX= 0;
  int openR = -1;
  int openC = -1;
  for (int col = 0; col < 3; col++) {
    for (int row = 0; row < 3; row++) {
      if (ttt[col][row] == p) {
        numX++;
      } else if (ttt[col][row] == ' ') {
        openR = row;
        openC = col;
      }
    }
    if (numX == 2 && openR != -1) {
      ttt[openC][openR] = 'O';
      WinnerCheck(openC, openR, 'O');
      return true;
    }
    numX= 0;
    openR = -1;
    openC = -1;
  }
  return false;
}