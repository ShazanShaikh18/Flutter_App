import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 231, 247),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 244, 63, 50),
        title: const Text(
          'Notifications Page',
          //style: TextStyle(color: Colors.amber),
        ),
      ),
      // body: Center(
      //   child: const Text(
      //     'This Is Notification Page',
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
            'https://t3.ftcdn.net/jpg/02/65/47/34/360_F_265473454_2JKTdzD2lDNt9XvsBaZODzWLXDXkQaLI.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.30),
            colorBlendMode: BlendMode.darken,
          ),
        ],
      ),
    );
  }
}
