import 'dart:io';
import 'dart:math';

void main() {
  
}

class Human {
  int? _numberOfArms = 2;
  double? hight;
  double? width;
  String? hairColor;

void setNumberOfArms(int numberOfArms){
  if(numberOfArms <= 2){
    this._numberOfArms=numberOfArms;  
  }
}
int getNumberOfArms(){
  return this._numberOfArms!;
}




  Human({
    this.hight,
    this.width,
    this.hairColor,
  }); 
}
