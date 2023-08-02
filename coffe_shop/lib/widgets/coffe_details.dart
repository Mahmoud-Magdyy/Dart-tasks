import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/coutner_salary_cubit.dart';

class CoffeeDetails extends StatelessWidget {
  String img;
  CoffeeDetails(this.img, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoutnerSalaryCubit(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white.withOpacity(0.4),
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/$img.png",
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'BEST COFFEE ',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                            letterSpacing: 3),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    img,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: BlocBuilder<CoutnerSalaryCubit, CoutnerSalaryState>(
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.2)),
                                borderRadius: BorderRadius.circular(20)),
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(onPressed: (){
                                   BlocProvider.of<CoutnerSalaryCubit>(context).decrementCounter();
                                }, icon: const Icon(
                                  Icons.minimize,
                                  size: 18,
                                  color: Colors.white,
                                )),
                                 Text(
                                  BlocProvider.of<CoutnerSalaryCubit>(context).counterItem.toString(),
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                IconButton(onPressed: (){
                                  BlocProvider.of<CoutnerSalaryCubit>(context).incrementCounter();
                                }, icon: const Icon(
                                  Icons.add,
                                  size: 18,
                                  color: Colors.white,
                                )),
                              ],
                            ),
                          ),
                          Text(
                            "\$ ${BlocProvider.of<CoutnerSalaryCubit>(context).counter}",
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Coffee is a major Source of antioxidants in the diet. It has many health benefits',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Volume:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '60 ml',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.grey[800])),
                        onPressed: () {},
                        child: const Text('Add to card')),
                    SizedBox(
                      height: 40,
                      width: 60,
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  AppColor.buttonColor)),
                          onPressed: () {},
                          child: const Icon(Icons.favorite_border_outlined)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
