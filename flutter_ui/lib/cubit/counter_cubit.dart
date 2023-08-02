
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';


// class CounterCubit extends Cubit<CounterState>{
//   CounterCubit():super(CounterInitial() );

//   int counter=0;


//   void increment(){
//   counter++;
//  emit(CounterIncrement()); 
// }
// }

class counterCubit extends Cubit<CounterState>{

counterCubit():super(CounterInitial());


int c =0;

void increment(){
  c++;
  emit(CounterIncrement()); 
}
void decrement(){
  c--;
  emit(CounterDecrement()); 
}

}