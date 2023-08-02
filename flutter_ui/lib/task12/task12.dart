import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/cubit/counter_cubit.dart';
import 'package:flutter_ui/cubit/counter_state.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => counterCubit(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Counter'),
          ),
          body: Center(
            child: BlocBuilder<counterCubit, CounterState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                        'click on + to add the counter and - to minus the counter',style: TextStyle(fontSize: 15)),
                        const SizedBox(height: 10,),
                    Text(BlocProvider.of<counterCubit>(context).c.toString(),style: const TextStyle(fontSize: 30),),
                  ],
                );
              },
            ),
          ),
          floatingActionButton: BlocBuilder<counterCubit, CounterState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      BlocProvider.of<counterCubit>(context).increment();
                    },
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      BlocProvider.of<counterCubit>(context).decrement();
                    },
                    child: const Icon(Icons.minimize),
                  )
                ],
              );
            },
          )),
    );
  }
}
