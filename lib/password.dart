import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter__app/tempCodeRunnerFile.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //title: Text('Find your account'),
      appBar: AppBar(
        title: Text("Find Account",
            style: TextStyle(shadows: [
              Shadow(color: Colors.black, offset: Offset(2, 1)),
            ])),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //Image.network(
          //'https://cdn-icons-png.flaticon.com/512/6202/6202878.png',
          //fit: BoxFit.cover,
          //color: Colors.black.withOpacity(0.65),
          //colorBlendMode: BlendMode.darken,
          //),

          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 45.0, horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Find Your Account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      decoration: TextDecoration.underline,
                      shadows: [
                        Shadow(
                            color: Color.fromARGB(255, 72, 166, 244),
                            offset: Offset(1.3, 1)),
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "  Enter your username, email, or mobile number.",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 108.0, horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Need more help?",
                    style: TextStyle(fontSize: 13, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          //     ],
          //   ),
          // ),

          // const Padding(
          //   padding: EdgeInsets.fromLTRB(25, 70, 30, 20),
          //   child: SingleChildScrollView(
          //     child: Text(
          //       "Find your account",
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontWeight: FontWeight.w900,
          //         fontSize: 22.0,
          //       ),
          //     ),
          //   ),
          // ),
          // new Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     Padding(
          //       padding: EdgeInsets.fromLTRB(27, 5, 10, 550),
          //       child: Text(
          //         "Enter your username, email, or mobile number.",
          //         style: TextStyle(
          //           color: Colors.blueGrey,
          //           fontSize: 14.8,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // new Row(
          //   //crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     Padding(
          //       padding: const EdgeInsets.fromLTRB(27, 145, 50, 650),
          //       child: Text(
          //         "Need more help?",
          //         style: TextStyle(
          //           color: Colors.blue,
          //           fontSize: 14.7,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 125, 1, 10),
                child: Form(
                  child: Theme(
                    data: new ThemeData(
                      //brightness: Brightness.dark,
                      primarySwatch: Colors.lightBlue,
                      inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                              color: Colors.blue, fontSize: 20.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(45.0),
                      child: new Column(
                        children: <Widget>[
                          TextField(
                            decoration: new InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Enter Username or email",
                                labelText: "Username or Email",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          new Padding(
                              padding: const EdgeInsets.only(top: 10.0)),
                          // new ElevatedButton(
                          //   onPressed: () => {},
                          //   child: Text("Find account"),
                          //   style: ElevatedButton.styleFrom(
                          //     primary: Colors.blue,
                          //     onPrimary: Colors.white,
                          //     padding: EdgeInsets.all(10.0),
                          //     minimumSize: Size(350.0, 50.0),
                          //     //style: TextStyle(fontWeight: FontWeight.bold),
                          //   ),
                          //   //splashColor: Colors.greenAccent,
                          // ),

                          InkWell(
                            splashColor: Colors.black,
                            hoverColor: Colors.blue,
                            onLongPress: () {
                              // Navigator.pushNamed(context, MyRoutes.homeRoute);
                            },
                            onDoubleTap: () {
                              // Navigator.pushNamed(context, MyRoutes.loginRoute);
                            },
                            onTap: () {
                              setState(() {
                                changeButton = true;
                              });
                              // Navigator.pushNamed(context, MyRoutes.homeRoute);
                            },
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: changeButton ? 70 : 300.0,
                              height: 50.0,
                              alignment: Alignment.center,
                              child: Expanded(
                                child: Text("Find Account",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        shadows: [
                                          Shadow(
                                              color: Colors.black,
                                              offset: Offset(1.8, 1)),
                                        ])),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10
                                      //changeButton ? 30 : 8
                                      )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
