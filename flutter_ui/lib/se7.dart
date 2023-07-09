import 'package:flutter/material.dart';

void main() {
  // runApp(Messege());
}

class Messege extends StatelessWidget {
  const Messege({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      title: 'messege',
      home: SafeArea(
        
        child: Scaffold(
        appBar: AppBar(

            title: const Text('asfsaf'),

        ),  
        body:
         
        const Column(
          
          mainAxisAlignment:MainAxisAlignment.start,
          children: [Row(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
            ),
                SizedBox(width: 20,),
               Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [Text('Mahmoud Magdy'),
                
                 Row(children: [Icon(Icons.check),
                  Icon(Icons.camera),Text('photo'),
                  SizedBox(width: 150,),
                  Text('friday'),
                  
                  
                  
                  
                  ],)
                
                ],
              ),
            
          ],
        )],),
      )),
        )    ;
  }
}
