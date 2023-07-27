import 'package:bmi_calculate/cubit/counter_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_colors.dart';
import '../../../cubit/counter_cubit_state.dart';

class Height extends StatefulWidget {
  
    const Height({super.key}); 
 
  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {


  @override
  Widget build(BuildContext context) {
    return   Expanded(child:
            Container(
              color: AppColor.containerColor,
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text('HEIGHTcm',style: TextStyle(color: Colors.white,fontSize: 30)),
              
              const SizedBox(height: 20,),
              BlocBuilder<CounterCubitCubit, CounterCubitState>(
                builder: (context,state) {
                  return Slider(
                    
                    min: 0.0,
                    max: 300.0,
                    divisions: 100,
                    
                    label:BlocProvider.of<CounterCubitCubit>(context).height.round().toString(),thumbColor: Colors.red,
                    

                    
                    value: BlocProvider.of<CounterCubitCubit>(context).height, onChanged:(val){
                      
                    setState(() {
                        BlocProvider.of<CounterCubitCubit>(context).height=val;
                    });
                    
                    
                    
                    

                  });
                }
              )
            ],),
            
            
            
            ));
  }
}