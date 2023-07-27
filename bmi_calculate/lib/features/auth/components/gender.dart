import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Expanded(
        child:
             Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.containerColor,
                    ),
                    onPressed: () {
                      
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: Colors.white,
                          size: 80,
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.containerColor,
                    ),
                    onPressed: () {
                      
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          color: Colors.white,
                          size: 100,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
         
      );
    
  }
}
