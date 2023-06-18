void main(){
  int num1=5;
  int num2=3;
  String operator = '*';
  switch(operator){
    case '+':print(num2+num1);
    break;
    case '-':print(num2-num1);
    break;
    case '*':print(num2*num1);
    break;
    case '/':print(num2/num1);
    break;
    default :print("not found");
  }
}