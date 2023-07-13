import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 239, 243),

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'My Post',
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_a_photo),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Scaffold(
                          appBar: AppBar(
                            title: Text('Add New Post'),
                            backgroundColor: Colors.blueGrey,
                          ),
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        )),
              ),
            },
          ),
        ],
      ),
      // body: Center(
      //   child: const Text(
      //     'For Post, Stories, Reels',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontStyle: FontStyle.italic,
      //       fontSize: 30.0,
      //     ),
      //   ),
      // ),

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //Image.asset('lib/images/newpic.jpg', fit: BoxFit.cover,
          //color: Colors.black.withOpacity(0.65),
          //colorBlendMode: BlendMode.darken,
          // ),
          SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                Image.asset(
                  'lib/images/newpic1.jpg',
                ),
                SizedBox(height: 40),
                Image.asset(
                  'lib/images/newpic.jpg',
                ),
                SizedBox(height: 40),
                Image.asset(
                  'lib/images/newpic2.jpg',
                ),
                SizedBox(height: 40),
                Image.asset(
                  'lib/images/newpic3.jpg',
                ),
                SizedBox(height: 40),
                Image.asset(
                  'lib/images/newpic4.jpg',
                ),
                SizedBox(height: 40),
                Image.asset(
                  'lib/images/newpic5.jpg',
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
