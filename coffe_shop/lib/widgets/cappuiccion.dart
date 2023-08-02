import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import 'coffe_details.dart';

class ItemsCappuiccion extends StatelessWidget {
  ItemsCappuiccion({super.key});
  List img = [
    'capp1',
    'capp2',
    'capp4',
    'capp6',
    'capp3',
    'capp1',
    'capp2',
    'capp3',
    
    
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
        itemCount: img.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          
            crossAxisCount: 2,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
            childAspectRatio: 150 / 195),
        itemBuilder: (context, i) {
          return Container(
            // padding: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff212325),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 8)
                ]),

            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return   CoffeeDetails(img[i]);
                    }));
                  },
                  child: Image.asset(
                    'assets/images/${img[i]}.png',
                    fit: BoxFit.contain,
                    width: 120,
                    height: 120,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          img[i],
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Best Coffe',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$30',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: AppColor.buttonColor,
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
