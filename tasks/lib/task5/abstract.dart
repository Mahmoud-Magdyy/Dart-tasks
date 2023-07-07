void main(){



}

abstract class Storage{

  void save();
  void retrieve();


}

class LocalStorage extends Storage{
  @override
  void save() {
    print('LocalStorage');
  }
  @override
  void retrieve() {
    print('LocalStorage');
  }
}
class CloudStorage extends Storage{
  @override
  void save() {
    print('CloudStorage');
  }
  @override
  void retrieve() {
    print('CloudStorage');
  }
}


