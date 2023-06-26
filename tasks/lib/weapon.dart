void main(){
Kalashnikov k=Kalashnikov();
Arbj a=Arbj();
}

class Weapon{
    int? numOfSshots;
    String? color;
    String? name;
}
class Kalashnikov extends Weapon{
  double? height;
  double? price;
  @override
  String?name;
}
class Arbj extends Weapon{
  double? height;
  double? price;
  @override
  String?name;
}