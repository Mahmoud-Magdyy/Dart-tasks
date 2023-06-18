import 'dart:io';

void main() {
  // for(int i = 1;i<=5;i++){
  //   for(int j = 0; j < i;j++ ){
  //     stdout.write('*');
  //   }
  //   print('');
  // }

for(int i = 1;i<=8;i++){

  for(int j = 8-i;j>0;j--){
      stdout.write(" ");
  }  
  for(int k = 1;k<=i;k++){
    stdout.write('* ');
  }
  
  stdout.writeln('');

    
  }


 
  



}