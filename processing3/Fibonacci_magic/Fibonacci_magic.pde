void setup(){
  int sum = 0;
  for(int i = 1; i < 6; i++){
    sum += fib(i);
  }
  print(sum);
}

void draw(){
  
}

int fib(int a){
  if(a == 1 || a == 2){
    return 1;
  }
  else{
    return fib(a - 1) + fib(a - 2);
  }
}