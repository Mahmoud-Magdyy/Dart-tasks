

void main(){
  
Reactangle test=Reactangle();

test.setHeight=5;
test.setWidth=5;
print(test.getArea);
}

class Reactangle{
  double? _width=2;
  double? _height=2;

 set setWidth(double width){
  if(width >= 0){
    _width=width;
  }
}  
 set setHeight(double height){
  if(height >= 0){
    _height=height;
  }
}
double get getWidth{
  return _width!;
}
double get getHeight{
  return _height!;
}
double get getArea{
  return _width!*_height!;
} 
}