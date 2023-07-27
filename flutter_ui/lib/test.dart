import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/cubit/counter_cubit.dart';
import 'package:flutter_ui/cubit/counter_state.dart';

class Cubb extends StatelessWidget {
  const Cubb({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => counterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('cubit'),
        ),
        body: Center(
          child: BlocBuilder< counterCubit,CounterState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(BlocProvider.of<counterCubit>(context).c.toString()),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {
                    BlocProvider.of<counterCubit>(context).increment();
                  }, child: const Text('button'))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
