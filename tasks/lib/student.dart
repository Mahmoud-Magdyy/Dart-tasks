void main(){

Student bert=Student('bert','ahmed',95);
Student ernie=Student('Ernie','mohamed',85);
print(ernie);
print(bert);
}

class Student{
final String fristName;
final String lastName;
int grade;



Student(this.fristName,this.lastName,this.grade);
   

String toString() {
    return '$fristName $lastName grade: $grade';
  }
}