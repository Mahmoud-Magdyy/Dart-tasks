void main(){
  int num=15;
  if(num%5==0){
    if(num%3==0){
      print("FIZZBUZZ");
    }
    else{
      print("FIZZ");
    }
  }
  else if(num%3==0){
    print("BUZZ");
  }
  else{
    print("not found");
  }
}