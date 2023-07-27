import 'package:bmi_calculate/core/utils/app_colors.dart';
import 'package:bmi_calculate/core/utils/app_strings.dart';
import 'package:bmi_calculate/cubit/counter_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/counter_cubit_cubit.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.rs, {super.key});
  double rs = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubitCubit(),
      child: Scaffold(
        backgroundColor: AppColor.bodyColor,
        appBar: AppBar(
          title: const Text('Your Result:'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              width: 383,
              height: 600,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
              ,
              color: AppColor.containerColor,
              
              ),
              
              child: BlocBuilder<CounterCubitCubit, CounterCubitState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      
                      
                      Text(getResult(),style:AppStrings.resText,),

                      const SizedBox(
                        height: 50,
                      ),
                      // Text(
                      //   BlocProvider.of<CounterCubitCubit>(context)
                      //       .ress()
                      //       .toString(),
                      //   style: const TextStyle(color: Colors.white),
                      // ),
                      Text(
                        rs .toStringAsFixed(1),
                        style: const TextStyle(color: Colors.white,fontSize: 80,fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(getInterpretation(),style:AppStrings.resComment,),
                      ),

                                    


                    ],
                  );
                },
              )),
        ),
      ),
    );
  }



  String getResult() {
    if (rs >= 25) {
      return 'Overweight';
    } else if (rs > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getInterpretation() {
    if (rs >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more. 💪🚵🚴🏊🏃';
    } else if (rs >= 18.5) {
      return 'You have a normal body weight. Good job! ';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more. 🍳🍗🍒🍎';
    }
  }
}
