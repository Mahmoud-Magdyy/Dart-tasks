import 'package:flutter/material.dart';


void main() {
  runApp(BusinessCard());
}

class BusinessCard extends StatelessWidget {
  
   BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'This Is My Business Card',
        home: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.green,
          appBar: AppBar(
            title: const Text("Business Card"),
            backgroundColor: Colors.green[900],
          ),
          body:  Center(
              child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             
            children: [
                // SizedBox(
                //   height: 250,
                //   width: 250,
                //   child: Image.asset("assets/images/IMG_20220506_194342.jpg"),
                // ),

                const CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/IMG_20190210_164529_812.jpg'),
                ),
                const SizedBox(
                  height: 10,
                ),
             const Column(
              children: [
                Text('Mahmoud Magdy',style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: 10,
                ),
                Text('software engineer',style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.bold),),
              
              ],
             ),
             
              const SizedBox(
                height: 30,
              ),
  
             Container(
              width: 350,
              height: 50, 
              padding: const EdgeInsets.all(10.0),
              
              decoration: BoxDecoration(
                
              color: Colors.white,  
                
              borderRadius: BorderRadius.circular(50)
              
              ),

              
              child: Row(children: [
                Icon(Icons.email),
                SizedBox(width: 15,),
                Text('Mahmoud Magdy',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
               ]
               
               
               ), 
              ),

              const SizedBox(
                height: 30,
              ),
  
             Container(
              width: 350,
              height: 50, 
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
              color: Colors.white,  
                
              borderRadius: BorderRadius.circular(50)
              
              ),
              child:  Row(children: [
                Icon(Icons.phone),
                SizedBox(width: 15,),
                Text('01112128654',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))
               ]
               
               
               ),
                
               
              )
              ,
              const SizedBox(
                  height: 10,
                ),
              // Container(
              // width: 350,
              // height: 50, 
              // padding: const EdgeInsets.all(10.0),
              
              // decoration: BoxDecoration(
                
              // color: Colors.white,  
                
              // borderRadius: BorderRadius.circular(50)
              
              // ),

              
              // child: Row(children: [
              //   Icon(Icons.lock),
              //   SizedBox(width: 15,),
              //   Text(password,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
              //  ]
               
               
              //  ), 
              // ),
              
            ],
            
            
             
          ) 
           
          
          
          
        
          ),
          
          
          
        ))  );
  }
}
