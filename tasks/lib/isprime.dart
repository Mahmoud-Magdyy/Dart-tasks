import 'dart:math';

void main(){
  
} 
// void isPrime (){
//   int n=6;
// if (n <= 1)
//         return false;
//   for (int i = 2; i <= sqrt(n); i++) {
//     if (n % i == 0){
//       print("not prime");
//       break;
      
//     }
//     else
//       print("is prime");
      
            
//   }
// }


bool isPrime (int n){
  n=6;
  if (n <= 1){
     return false;
  }
       
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0){
      return false;
      
    }
            
  }
  return true;
}