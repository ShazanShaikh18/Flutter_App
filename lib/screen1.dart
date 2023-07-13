import 'package:flutter/material.dart';
import 'package:flutter__app/screen4.dart';

import 'login.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 229, 240),
      appBar: AppBar(
        title: const Text(
          'Home Screen',
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen4()))
            },
          ),
          const SizedBox(
            height: 40,
          ),
          IconButton(
            icon: const Icon(Icons.chat),
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      backgroundColor: Color.fromARGB(255, 209, 235, 248),
                      appBar: AppBar(
                        title: const Text(
                          'Chat Box',
                        ),
                        actions: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.settings),
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Scaffold(
                                          appBar: AppBar(
                                            title: Text('Settings'),
                                          ),
                                          backgroundColor: Color.fromARGB(
                                              255, 215, 232, 240),
                                          endDrawer: Drawer(
                                            child: ListView(
                                              padding: EdgeInsets.zero,
                                              children: [
                                                const DrawerHeader(
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 62, 64, 65),
                                                  ),
                                                  child:
                                                      UserAccountsDrawerHeader(
                                                    decoration: BoxDecoration(
                                                        color: Colors.black),
                                                    accountName: Text(
                                                      "Username: royal_shaxan18",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    accountEmail: Text(
                                                        "shazanshaikh143.ss@gmail.com"),
                                                    currentAccountPictureSize:
                                                        Size.square(50),
                                                    currentAccountPicture:
                                                        CircleAvatar(
                                                      backgroundImage: AssetImage(
                                                          "lib/images/my_pic.jpg"),
                                                    ),
                                                  ),
                                                ),
                                                ListTile(
                                                  leading:
                                                      const Icon(Icons.person),
                                                  title: const Text(
                                                      ' My Profile '),
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading: const Icon(
                                                      Icons.online_prediction),
                                                  title: const Text(
                                                      ' Active Status '),
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading: const Icon(Icons
                                                      .notifications_active),
                                                  title: const Text(
                                                      ' Messaging Notifications '),
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading: const Icon(
                                                      Icons.group_add),
                                                  title: const Text(
                                                      ' Create Group '),
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading:
                                                      const Icon(Icons.message),
                                                  title: const Text(
                                                      ' Message Requests '),
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading:
                                                      const Icon(Icons.save),
                                                  title: const Text(
                                                      ' Saved Messages '),
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading:
                                                      const Icon(Icons.block),
                                                  title: const Text(
                                                      ' Blocked Account '),
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading: const Icon(
                                                      Icons.no_accounts),
                                                  title: const Text(
                                                      'Restricted Accounts'),
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading: const Icon(
                                                      Icons.music_off),
                                                  title: const Text(
                                                      'Muted Accounts'),
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading: const Icon(
                                                      Icons.account_box),
                                                  title: const Text(
                                                      'Accounts You Follow'),
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading:
                                                      const Icon(Icons.help),
                                                  title: const Text('Help'),
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                                ListTile(
                                                  leading:
                                                      const Icon(Icons.logout),
                                                  title: const Text('LogOut'),
                                                  onTap: () {
                                                    Navigator.pushReplacement(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              LoginPage(
                                                            title: '',
                                                          ),
                                                        ));
                                                    //Navigator.pop(context);
                                                  },
                                                ),
                                              ],
                                            ),
                                            backgroundColor: Color.fromARGB(
                                                255, 248, 232, 238),
                                          )))),
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () => {},
                          ),
                        ],
                      ),
                      body: const Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Text(
                          'Messages',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                      ),
                    ),
                  ))
            },
          ),
        ],
      ),
      // body: const Center(
      //   child: Text(
      //     'This Is Home Page',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontStyle: FontStyle.italic,
      //       fontSize: 30.0,
      //     ),
      //   ),
      // ),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            'https://t4.ftcdn.net/jpg/02/43/79/59/360_F_243795989_qKB5vyvKz6cC9iEMyzGW2Zkb9dOlmu3S.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.30),
            colorBlendMode: BlendMode.darken,
          ),
        ],
      ),
    );
  }
}
