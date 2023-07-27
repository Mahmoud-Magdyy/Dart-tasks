

import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit_state.dart';
class CounterCubitCubit extends Cubit<CounterCubitState> {
  CounterCubitCubit() : super(CounterCubitInitial());

  double height=0;
  int age=0;
  int weight=0;
  String s='hoda';
  
  

  void ageIncremet(){

    age++;
    emit(AgeIncremet());
  }
  void ageDecrement(){

    age--;
    emit(AgeDecrement());
  }

  void weightIncremet(){

    weight++;
    emit(WeightIncremet());
  }
  void weightDecrement(){

    weight--;
    emit(WeightDecrement());
  }
  
  double ress(){
  

emit(R());
    return (weight / ((height/100)*(height/100)))
    
    ; 
    
  }

}
