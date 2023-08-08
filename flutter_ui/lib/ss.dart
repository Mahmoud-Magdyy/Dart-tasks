import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/cubit/sql_cubit.dart';
import 'package:flutter_ui/cubit/sql_state.dart';

class Ss extends StatelessWidget {
  const Ss({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SqlCubit, SqlState>(
      builder: (context, state) {
        return const Scaffold();
      },
    );
  }
}
