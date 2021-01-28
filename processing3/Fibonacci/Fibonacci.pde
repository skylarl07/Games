//Fibonacci nth place

/*int temp;
int second = 2;
int first = 1;
int sum = 3; 

for(int n = 3; n <= 4; n ++){ 
  temp = first + second;
  first = second;
  second = temp;
  sum = sum + temp;
}

print(sum);*/

int second = 2;
int first = 1;
int temp = 3;

for(int n = 4; n <= 5; n ++){ 
  first = second;
  second = temp;
  temp = first + second;
}

print(temp);