
import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({
    super.key,
  });
  
  

@override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Card(
          child: Text('data',style: TextStyle(fontSize: 40),),
        ),
      ),
    );
  }
}
// Padding(
//             padding: const EdgeInsets.all(25),
//             child: Card(
//               color: Colors.red,
//               elevation:20 ,
//               shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
//               shadowColor: Colors.green,
//               child: const Text('data',style: TextStyle(fontSize: 40),),
//             ),
//           ),


// fonts:
// Center(child: Text('data',style: TextStyle(fontFamily: 'Cherry'),)),



// image == null ? const Text('not found') : Image.file(image!)



// File? image;

//   final imagePicker = ImagePicker();

//   void UploadPhoto() async {
//     var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);

//     if (pickedImage != null) {
//       image = File(pickedImage.path);
//     }