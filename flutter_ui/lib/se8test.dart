import 'package:flutter/material.dart';

void main(){
runApp(tes());

}



class tes extends StatelessWidget {
   tes({super.key});
  TextEditingController eController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          
          body: 
          
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              
              
              children: [
                
          
              TextField(
                controller: eController,

                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  labelText: 'Email',
                  
                  prefixIcon: Icon(Icons.email),
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),  
          
          
          
              ),
              const Padding(padding:EdgeInsets.only(bottom: 10)),
              TextField(
                controller: eController,
                
                decoration: InputDecoration(
                  labelText: 'Password',
                  
                  suffixIcon: Icon(Icons.visibility),
                  prefixIcon: Icon(Icons.lock),
                  focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange,),
                  ),
                  hintText: 'Password',
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide:const BorderSide( color:Colors.black,width: 20)
                  
                  )
                ),  
          
          
          
              ),
              ElevatedButton(onPressed: (){}, child: Text('clear')),
              
          
            ]),
          ),


      ),
    );
  }
}