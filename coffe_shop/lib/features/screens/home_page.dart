import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../widgets/cappuiccion.dart';
import '../../widgets/coffe_cold.dart';
import '../../widgets/coffe_hot.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        drawer: Drawer(
            child: Container(
          color: Colors.grey,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('Mahmoud Magdy'),
                accountEmail: const Text('Mahmoudmagdy20002@gmail.com'),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/IMG_20220506_194342.jpg'),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home Page',
                  
                ),
              ),
              const ListTile(
                leading: Icon(Icons.help),
                title: Text(' Help'),
              ),
              const ListTile(
                leading: Icon(Icons.help_center),
                title: Text('About'),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              )
            ],
          ),
        )),
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          
          
        ),
        body: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "It's a Great Day for Coffe ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(5)),
              child: TextField(
                 enabled: false,
                decoration: InputDecoration(
                  
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              // height: 35,
              // width: 400,
              child: TabBar(
                  isScrollable: true,
                  labelColor: AppColor.buttonColor,
                  unselectedLabelColor: Colors.white.withOpacity(0.5),
                  indicator: const UnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 3, color: AppColor.buttonColor)),
                  labelStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  tabs: const [
                    Tab(
                      text: 'Hot Coffee',
                    ),
                    Tab(
                      text: 'Cold Coffee',
                    ),
                    Tab(
                      text: 'Cappuiccion',
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ItemsHot(),
                  ItemsCold(),
                  ItemsCappuiccion(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
