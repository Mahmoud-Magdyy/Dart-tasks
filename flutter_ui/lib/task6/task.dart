import 'package:flutter/material.dart';


// void main() {
//   runApp();
// }

class BusinessCard extends StatelessWidget {
  String email;
  String Password;
  String phone;
   BusinessCard(this.email,this.Password,this.phone,{super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'This Is My Business Card',
        home: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.teal[300],
          appBar: AppBar(
            title: const Text("Business Card"),
            backgroundColor: Colors.teal[500],
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
                    backgroundImage: AssetImage('assets/images/IMG_20220506_194342.jpg'),
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
                const Icon(Icons.email),
                const SizedBox(width: 10,),
                Text(email,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold))
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
                const Icon(Icons.phone),
                const SizedBox(width: 15,),
                Text(phone,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold))
               ]
               
               
               ),
                
               
              )
              ,
              const SizedBox(
                  height: 10,
                ),
              //  Container(
              //  width: 350,
              //  height: 50, 
              //  padding: const EdgeInsets.all(10.0),
              
              //  decoration: BoxDecoration(
                
              //   color: Colors.white,  
                
              //  borderRadius: BorderRadius.circular(50)
              
              //  ),

              
              // child: Row(children: [
              //   const Icon(Icons.lock),
              //   const SizedBox(width: 15,),
              //   Text(Password,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
              //  ]
               
               
              //  ), 
              // ),
              
            ],
            
            
             
          ) 
           
          
          
          
        
          ),
          
          
          
        ))  );
  }
}
