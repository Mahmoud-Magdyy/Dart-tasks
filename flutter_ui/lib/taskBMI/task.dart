
import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});
  
  @override
  State<Bmi> createState() => _BmiState();
}
var contColor=const Color(0XFF1A1F38);
class _BmiState extends State<Bmi> {
  var valueslider=0.0;
  var wieghtCount=0;
  var ageCount=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      backgroundColor: const Color(0xff0A0E21),
      appBar: AppBar(title: const Text('BMI calculator'),
      centerTitle: true,
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          //male and female container
          Expanded(child:
          Container(color: Colors.red,
          
          child: Row(children: [
            Expanded(
              child: Container(
                color: contColor,
                child:const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.male,color: Colors.white,size: 80,),
                  Text('male',style: TextStyle(color: Colors.white,fontSize: 30),),

                ],) ,
              ),
            ),
            const SizedBox(width: 20,)
            ,
            Expanded(
              child: Container(
                color: contColor,
                child:const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.female,color: Colors.white,size: 100,),
                  Text('female',style: TextStyle(color: Colors.white,fontSize: 30),),

                ],) ,
              ),
            ),
          ],),
          
          
          ),
          ),
          const SizedBox(height: 40,),
          //height container
          Expanded(child:
          Container(color: contColor,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('HEIGHTcm',style: TextStyle(color: Colors.white,fontSize: 30)),
            const SizedBox(height: 20,),
            Slider(
              
              min: 0.0,
              max: 300.0,
              divisions: 100,
              
              label: valueslider.round().toString(),thumbColor: Colors.red,
              

              
              value: valueslider, onChanged:(val){
               setState(() {
                  valueslider=val;
               });
              
               

            })
          ],),
          
          
          
          )),
          const SizedBox(height: 40,),
          Expanded(child:Container(
            
            color: Colors.orange,
            
            child: Row(children: [
              Expanded(
                child: Container(
                  
                  color: Colors.blue,
                  child: const Column(
                    
                    children: [
                    Text('wieght',style: TextStyle(color: Colors.white,fontSize: 20),),
                    


                  ],)
                ,),
              ),
              Expanded(
                child: Container(
                  color: Colors.deepOrange,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('data')
                  ],)
                ,),
              )

            ],)
          
          
          
          )),
          ElevatedButton(onPressed: (){}, child: const Text('Calculate'))
        ],),
      ),
    );
  }
}