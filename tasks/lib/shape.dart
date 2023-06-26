void main(){

Reactangle r=Reactangle("black Reactangle");
Square s=Square("white Square");
print(r.color);
print(s.color);

}

class Shape{
 double?  width;
 double?  height;
num area(num height, num width) {
  return width*height;
}
 

}

class Reactangle extends Shape {
String color;
Reactangle(this.color);
@override
num area(num height, num width) {
  return width*height;
}

}

class Square extends Shape{
String color;
Square(this.color);

@override
num area(num height, num width) {
  return width*height;
}



}

