import 'package:flutter/material.dart';

import 'login.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Setting Page',
        ),
      ),

      //   child: Text(
      // body: const Center(
      //     'This Is Setting Page',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontStyle: FontStyle.italic,
      //       fontSize: 30.0,
      //     ),
      //   ),
      // ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 61, 57, 59),
              ), //
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text(
                  "Shazan Shaikh",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("shazanshaikh143.ss@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("lib/images/my_pic.jpg"),
                  // backgroundColor: Color.fromARGB(255, 117, 115, 115),
                  // child: Text(
                  //   "S",
                  //   style: TextStyle(fontSize: 30.0, color: Colors.black),
                  // ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(" Home "),
              onTap: () {
                Navigator.pushNamed(context, 'afterlogin');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.security),
              title: const Text('Password & Security'),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy'),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.accessibility),
              title: const Text('About'),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(
                        title: '',
                      ),
                    ));
                //Navigator.pop(context);
              },
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 248, 232, 238),
        // appBar: AppBar(
        //   title: const Text(
        //     'Setting Page',
        //   ),
        // ),
        // body: const Center(
        //   child: Text(
        //     'This Is Setting Page',
        //     style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       fontStyle: FontStyle.italic,
        //       fontSize: 30.0,
        //     ),
        //   ),
        // ),
      ),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            'https://t4.ftcdn.net/jpg/00/96/28/43/360_F_96284385_1Ms5fDXOflB7uKPFLEre7esw0SSOxZKo.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.30),
            colorBlendMode: BlendMode.darken,
          ),
        ],
      ),
    );
  }
}
