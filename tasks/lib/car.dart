void main(){

car myCar = car(name: 'bmw',model: 2020,color: 'black');

print(myCar.name);
print(myCar.model);
print(myCar.color);

}


class car{

  String? name;
  int? model;
  String? color;

  car({this.name, this.model ,this.color} );



}