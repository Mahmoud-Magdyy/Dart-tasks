import 'package:flutter/material.dart';

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
          backgroundColor: Colors.green,
          child: const Icon(Icons.photo_camera, color: Colors.white),
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
            chats(Colors.red, 'Mohamed Hanafy', const Icon(Icons.mic), ' 0:07',
                '1:33 PM',
                s: ''),
            Sbox,
            chats(
              Colors.grey,
              'Mohamed Mosa',
              const Icon(Icons.check),
              ' Photo',
              '1:33 PM',
            ),
            Sbox,
            chats(
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
            chats(
              Colors.green,
              'Ahmed Lotfy',
              const Icon(Icons.check),
              ' متنساش الفلاشة وانت جاي الكلية',
              '1:12 AM',
            ),
            Sbox,
            chats(Colors.black, 'Aahmed Gamal', const Icon(Icons.done_all),
                'you are a great man', '11:45 AM',
                s: '2'),
            Sbox,
            chats(
                Colors.blue[300],
                'Farah',
                const Icon(Icons.sentiment_satisfied_alt),
                ' Sticker',
                '11:45 AM',
                s: '1'),
            Sbox,
            chats(
              Colors.blue,
              'Shrouk',
              const Icon(Icons.check),
              ' How are you shrouk ',
              '11:45 AM',
            ),
          ]),
          Column(
            children: [
              const Padding(padding: EdgeInsets.all(5)),
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

Widget chats(var CircleAvatarcolor, String name, var iconn, String subtitlename,
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
          style: const TextStyle(color: Colors.green),
        ),
        s == null
            ? const Text('')
            :  SizedBox(
                height: 25,
                width: 25,
                child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text(
                      s,
                      style: const TextStyle(color: Colors.white),
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
    trailing: const Icon(
      Icons.phone,
      color: Colors.green,
    ),
  );
}
