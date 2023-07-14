// import 'package:flutter/material.dart';
// import 'package:flutter_ui/main.dart';

// void main(){
// runApp(WhatsApp());

// }

// class WhatsApp extends StatelessWidget {
//   const WhatsApp({super.key});
  

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
        
//         home: SafeArea(child: 
//         Scaffold(
          
//           appBar: AppBar(
//             leading: Icon(Icons.menu),
//             title: Text('WhatsApp chat'),
//             backgroundColor: Colors.green,
//           ),
          
//           body: 
//           Column(children: [
//             col(
//              'mahmoud magdy ',Colors.green
//             ),
//             SizedBox(height: 10,),
            
//           ],),
          

//         )
        
//         ),


//     );
//   } 
// }

// Widget col(String name  ,  var avatarColor,Icon icon){

// return Column
// (
  
// children: [
  
//   Row(children: [
//     CircleAvatar(
//         backgroundColor: avatarColor,
//   ),
//     SizedBox(width: 30,),
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [Text(name),
//         Row(
          
//           children: [icon,Text('asfsafs'),],)
//       ],
//     )

//   ],)
// ],
// );
// }