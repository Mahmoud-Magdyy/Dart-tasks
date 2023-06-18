void main(){
  List<int> myList=[1,2,3,4,1,5,6,9,8,40,58,100];
  myList.removeWhere((element) => element >= 5);

  print(myList);




}