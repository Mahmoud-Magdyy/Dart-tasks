import 'package:bloc/bloc.dart';


part 'coutner_salary_state.dart';

class CoutnerSalaryCubit extends Cubit<CoutnerSalaryState> {
  CoutnerSalaryCubit() : super(CoutnerSalaryInitial());

  int counter=0;
  int counterItem=0;

  void incrementCounter() {
      counter+=30;
      counterItem++;
      emit(IncrementCounter());
    }
  void decrementCounter() {
      counter-=30;
      counterItem--;
      emit(DecrementCounter());
    }

}
