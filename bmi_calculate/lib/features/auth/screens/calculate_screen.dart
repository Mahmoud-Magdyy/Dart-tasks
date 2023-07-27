import 'package:bmi_calculate/core/utils/app_colors.dart';
import 'package:bmi_calculate/cubit/counter_cubit_cubit.dart';
import 'package:bmi_calculate/cubit/counter_cubit_state.dart';
import 'package:bmi_calculate/features/auth/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/age_weight.dart';
import '../components/gender.dart';
import '../components/height.dart';

class CalculateScreen extends StatelessWidget {
  const CalculateScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubitCubit(),
      child: Scaffold(
        backgroundColor: AppColor.bodyColor,
        appBar: AppBar(
          title: const Text('BMI calculator'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Gender(),
              const SizedBox(
                height: 20,
              ),
              const Height(),
              const SizedBox(
                height: 20,
              ),
              const AgeWeight(),
              const SizedBox(
                height: 20,
              ),
              // BlocBuilder<CounterCubitCubit, CounterCubitState>(
              //   builder: (context, state) {
              //     return Text(
              //       BlocProvider.of<CounterCubitCubit>(
              //         context,
              //       ).ress().toStringAsFixed(1),
              //       style: const TextStyle(color: Colors.white),
              //     );
              //   },
              // ),
              // Text(BlocProvider.of<CounterCubitCubit>(context).gender,style: const TextStyle(color: Colors.white),),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<CounterCubitCubit, CounterCubitState>(
                builder: (context, state) {
                  return SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return ResultScreen(
                              BlocProvider.of<CounterCubitCubit>(
                                context,
                              ).ress(),
                            );
                          }));
                        },
                        child: const Text('CALCULATE')),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}