import 'package:bmi_calculate/core/utils/app_colors.dart';
import 'package:bmi_calculate/cubit/counter_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/counter_cubit_state.dart';

class AgeWeight extends StatefulWidget {
  const AgeWeight({super.key});

  @override
  State<AgeWeight> createState() => _AgeWeightState();
}

class _AgeWeightState extends State<AgeWeight> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              // color: AppColor.containerColor,
            ),
            width: 135,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<CounterCubitCubit, CounterCubitState>(
                  builder: (context, state) {
                return Column(
                  children: [
                    const Text(
                      'WEIGHT',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      BlocProvider.of<CounterCubitCubit>(context)
                          .weight
                          .toString(),
                      style: const TextStyle(
                          fontSize: 40, color: AppColor.textColor),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                              color: Colors.black,
                              icon: const Icon(
                                Icons.add,
                                size: 25,
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubitCubit>(context)
                                    .weightIncremet();
                              }),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                              color: Colors.black,
                              icon: const Icon(
                                Icons.minimize,
                                size: 25,
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubitCubit>(context)
                                    .weightDecrement();
                              }),
                        )
                      ],
                    )
                  ],
                );
              }),
            ),
          ),
          const SizedBox(
            width: 80,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              // color: AppColor.containerColor,
            ),
            width: 135,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:BlocBuilder<CounterCubitCubit, CounterCubitState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      const Text(
                        'AGE',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        BlocProvider.of<CounterCubitCubit>(context)
                            .age
                            .toString(),
                        style:
                            const TextStyle(fontSize: 40, color: Colors.white),
                      ),

                      //icon button
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                                color: Colors.black,
                                icon: const Icon(
                                  Icons.add,
                                  size: 25,
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubitCubit>(context)
                                      .ageIncremet();
                                }),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                                color: Colors.black,
                                icon: const Icon(
                                  Icons.minimize,
                                  size: 25,
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubitCubit>(context)
                                      .ageDecrement();
                                }),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
