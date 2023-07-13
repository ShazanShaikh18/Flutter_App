import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter__app/screen1.dart';
import 'package:flutter__app/screen2.dart';
import 'package:flutter__app/screen3.dart';
import 'package:flutter__app/screen4.dart';
import 'package:flutter__app/screen5.dart';

class AfterLogin extends StatefulWidget {
  const AfterLogin({Key? key}) : super(key: key);

  @override
  _AfterLoginState createState() => _AfterLoginState();
}

class _AfterLoginState extends State<AfterLogin> {
  int _selectedIndex = 0;

  List<Widget> widgetList = const [
    // Screen1(),
    // Screen2(),
    // Screen3(),
    // Screen4(),
    // Screen5(),
  ];

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: TextStyle(
        color: Colors.pink, fontSize: 30, fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        //style: optionStyle,
      ),
    ),
    //ButtonBar(),
    Text(
      'Index 1: Search',
      style: optionStyle,
    ),
    Text(
      'Index 2: Post, Story, Reels',
      style: optionStyle,
    ),
    Text(
      'Index 3: Notifications',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
    Screen5(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //leading: const BackButton(
      //color: Colors.white,
      // title: Text(
      //   'Welcome',
      //   style: TextStyle(
      //     fontStyle: FontStyle.italic,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: const Icon(Icons.favorite_border),
      //       onPressed: () => {
      //         setState(
      //           () {
      //             count++;
      //           },
      //         ),
      //       },
      //     ),
      //     const SizedBox(
      //       height: 40,
      //     ),
      //     Text(
      //       "$count",
      //       style: TextStyle(fontSize: 50, color: Colors.pink),
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.chat),
      //       onPressed: () => {},
      //     ),
      //   ],
      // ),
      // body: Center(
      //   child: _widgetOptions.elementAt(_selectedIndex),
      // ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Post',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
            backgroundColor: Color.fromARGB(255, 244, 63, 50),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
            backgroundColor: Colors.black,
          ),
        ],
        //currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        selectedFontSize: 15,
        unselectedFontSize: 8,
        selectedItemColor: Colors.white,
        //onTap: _onItemTapped,
        //),
      ),
    );
    //);
  }
}
