import 'package:api/api_part_two/presentation/cubit/chef_cubit.dart';
import 'package:api/api_part_two/presentation/cubit/chef_state.dart';
import 'package:api/cubit/api_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiSessionPart2 extends StatelessWidget {
  const ApiSessionPart2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChefCubit, ChefState>(
      builder: (context, state) {
        return const Scaffold();
      },
    );
  }
}
