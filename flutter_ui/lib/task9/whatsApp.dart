import 'package:flutter/material.dart';
import 'package:flutter_ui/task6/task.dart';

class WhastApp extends StatelessWidget {
  WhastApp({super.key});
  bool isIcons = false;

  var Sbox = const SizedBox(
    height: 2,
    width: 300,
    child: ColoredBox(
      color: Colors.grey,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.photo_camera, color: Colors.white),
          backgroundColor: Colors.green,
        ),
        drawer: const Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    accountName: Text('Mahmoud Magdy'),
                    accountEmail: Text('Mahmoudmagdy20002@gsmail.com'),
                    decoration:BoxDecoration(
                      color: Colors.green,
                    ),
                    currentAccountPicture:CircleAvatar(backgroundImage: AssetImage('assets/images/IMG_20220506_194342.jpg'),),
                    ),

                    ListTile(leading: Icon(Icons.home),title: Text('Home Page'),),
                    ListTile(leading: Icon(Icons.help),title: Text(' Help'),),
                    ListTile(leading: Icon(Icons.help_center),title: Text('About'),),
                    ListTile(leading: Icon(Icons.logout),title: Text('Logout'),)
              ],
            )
                
                
                
                ),
        appBar: AppBar(
          bottom: const TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            )
          ]),
          backgroundColor: Colors.green,
          title: const Text('WhatsApp Chat'),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.chat),
            Padding(padding: EdgeInsets.all(8))
          ],
        ),
        body: TabBarView(children: [
          Column(children: [
            ros(Colors.red, 'Mohamed Hanafy', Icon(Icons.mic), ' 0:07',
                '1:33 PM',
                s: ''),
            Sbox,
            ros(
              Colors.grey,
              'Mohamed Mosa',
              Icon(Icons.check),
              ' Photo',
              '1:33 PM',
            ),
            Sbox,
            ros(
              Colors.yellow,
              'Mohamed Samir',
              const Icon(
                Icons.done_all,
                color: Colors.blue,
              ),
              ' 0:07',
              'friday',
            ),
            Sbox,
            ros(
              Colors.green,
              'Ahmed Lotfy',
              const Icon(Icons.check),
              ' متنساش الفلاشة وانت جاي الكلية',
              '1:12 AM',
            ),
            Sbox,
            ros(Colors.black, 'Aahmed Gamal', const Icon(Icons.done_all),
                'you are a great man', '11:45 AM',
                s: ''),
            Sbox,
            ros(
                Colors.blue[300],
                'Farah',
                const Icon(Icons.sentiment_satisfied_alt),
                ' Sticker',
                '11:45 AM',
                s: ''),
            Sbox,
            ros(
              Colors.blue,
              'Shrouk',
              const Icon(Icons.check),
              ' How are you shrouk ',
              '11:45 AM',
            ),
          ]),
          Column(
            children: [
              Padding(padding: EdgeInsets.all(5)),
              const ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      AssetImage('assets/images/IMG_20190210_164529_812.jpg'),
                ),
                title: Text('My status'),
                subtitle: Text('tap to add status update'),
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Text('Recent updates'),
                ),
              ),
              status(Colors.grey, 'Mahmoud Magdy', 'just now'),
              Sbox,
              status(Colors.red, 'Nour Sabry', '14 minuts ago'),
              Sbox,
              status(Colors.blue, 'Ahmed Hosny', '30 minuts ago'),
              Sbox,
              status(Colors.cyanAccent, 'brother', '50 minuts ago'),
              Sbox,
              status(Colors.lightBlue, 'Eslam Nabil', '1 hour ago'),
              Sbox,
            ],
          ),
          Column(
            children: [
              const Padding(padding: EdgeInsets.all(5)),
              const ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.green,
                ),
                title: Text('Create call link'),
                subtitle: Text('Share a link for your WhatsApp call'),
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Text('Recent '),
                ),
              ),
              calls(Colors.black, 'Mahmoud Magdy', ' today, 12:49 AM',
                  colorarrow: Colors.red),
              calls(Colors.amber, 'Ahmed Fathy', ' today, 8:49 AM',
                  colorarrow: Colors.red),
              calls(Colors.deepPurpleAccent, 'Ammar Yasser', ' today, 7:49 AM',
                  colorarrow: Colors.green),
              calls(Colors.lightBlueAccent, 'Ali Maloul', ' today, 1:49 PM',
                  colorarrow: Colors.green),
              calls(Colors.tealAccent, 'Magdy Afshaa', ' today, 3:49 PM',
                  colorarrow: Colors.green),
            ],
          ),
        ]),
      ),
    );
  }
}

Widget ros(var CircleAvatarcolor, String name, var iconn, String subtitlename,
    String trail,
    {var s, var data}) {
  return ListTile(
    leading: CircleAvatar(backgroundColor: CircleAvatarcolor),
    title: Text(name),
    subtitle: Row(
      children: [iconn, Text(subtitlename)],
    ),
    trailing: Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          trail,
          style: TextStyle(color: Colors.green),
        ),
        s == null
            ? Text('')
            : const SizedBox(
                height: 25,
                width: 25,
                child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.white),
                    ))),
      ],
    ),
  );
}

Widget status(var Avacolor, String nam, String time) {
  return ListTile(
    leading: CircleAvatar(backgroundColor: Avacolor),
    title: Text(nam),
    subtitle: Text(time),
  );
}

Widget calls(var Avacolor, String nam, String time, {var colorarrow}) {
  return ListTile(
    leading: CircleAvatar(backgroundColor: Avacolor),
    title: Text(nam),
    subtitle: Row(
      children: [
        Icon(
          Icons.arrow_outward_outlined,
          size: 20,
          color: colorarrow,
        ),
        Text(time),
      ],
    ),
    trailing: Icon(
      Icons.phone,
      color: Colors.green,
    ),
  );
}
