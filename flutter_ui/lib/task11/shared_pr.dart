import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedPr extends StatefulWidget {
  const sharedPr({super.key});

  @override
  State<sharedPr> createState() => _sharedPrState();
}

class _sharedPrState extends State<sharedPr> {
  

  TextEditingController saveName=TextEditingController();

  TextEditingController saveAge=TextEditingController();

  TextEditingController saveCountry=TextEditingController();
  
  String? name='none';
  String? age='none';
  String? country='none';

  var SbW = const SizedBox(
    width: 40,
  );

  var SbH = const SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Save Objects in SharedPreferences'),
      ),
      body: Padding(
        
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextFormField(
              controller: saveName,
              decoration: const InputDecoration(
                hintText: 'Name',
              ),
            ),
            SbH,
            TextFormField(
              controller: saveAge,
              
              decoration: const InputDecoration(
                hintText: 'Age',
              ),
            ),
            
            
            SbH,
            TextFormField(
              controller: saveCountry,
              decoration: const InputDecoration(
                hintText: 'Country',
              ),
            ),
            SbH,
             
            Row(
              children: [
                SbW,
                //save button
                ElevatedButton(onPressed: () async{
                  var sp=await SharedPreferences.getInstance();
                   sp.setString('SaveName', saveName.text);
                   sp.setString('SaveAge', saveAge.text);
                   sp.setString('SaveCountry', saveCountry.text);
                   
                   var snackSave=const SnackBar(content: Text('Saved!'),duration: Duration( milliseconds: 700),);
                   ScaffoldMessenger.of(context,).showSnackBar(snackSave);
                   

                }, child: const Text('Save')),
                SbW,


               
                //load Button
                ElevatedButton(onPressed: () async{
                   var snackLoeaded=const SnackBar(content: Text('Loaded!'),duration: Duration( milliseconds: 700));
                   ScaffoldMessenger.of(context,).showSnackBar(snackLoeaded);
                  var sp=await SharedPreferences.getInstance();
                   name= sp.getString('SaveName')??'';
                  
                   age= sp.getString('SaveAge')??'';
                   country= sp.getString('SaveCountry')??'';
                   setState(() {
                      SnackBar(content: const Text('Save'),action: SnackBarAction(label: 'label', onPressed: (){},),);
                   });
                  
                }, child: const Text('Load')),
                SbW,
                //clear button
                ElevatedButton(onPressed: ()async {
                   var snackClear=const SnackBar(content: Text('Cleared!'),duration: Duration( milliseconds: 700));
                   ScaffoldMessenger.of(context,).showSnackBar(snackClear);
                  var sp=await SharedPreferences.getInstance();
                  await sp.clear();
                  
                }, child: const Text('Clear')),
              ],
            ),
            SbH,
               Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text('Name:'), Text(name!)],
            ),
            SbH,
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text('Age:'), Text(age!)],
            ),
            SbH,
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text('Country:'), Text(country!)],
            ),
            SbH,
          ],
        ),
      
      ),
    );
  }
}
