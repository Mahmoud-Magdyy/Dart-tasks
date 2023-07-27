import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class async extends StatefulWidget {
   const async({super.key});

  @override
  State<async> createState() => _asyncState();
}

class _asyncState extends State<async> {
  String? value='none';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('app async'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(value!),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () async {
                  final sp = await SharedPreferences.getInstance();
                      
                  await sp.setString('onBoarding', 'done').then((value) => print('finish'));
                },
                child: const Text('setData')),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () async {
                  setState(() {
                    
                  });
                  final sp = await SharedPreferences.getInstance();
                   value=  sp.getString('onboarding')??'None';
                 
                },
                child: const Text('getData'))
          ],
        ),
      ),
    );
  }
}
