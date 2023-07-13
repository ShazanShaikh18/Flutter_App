import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter__app/screen1.dart';

import 'afterlogin.dart';
//import 'package:flutter__app/tempCodeRunnerFile.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Create New Account',
          style: TextStyle(shadows: [
            Shadow(color: Colors.black, offset: Offset(2, 1)),
          ]),
        ),
      ),
      backgroundColor: Colors.blue,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            'https://thumbs.dreamstime.com/b/vertical-shot-road-magnificent-mountains-under-blue-sky-captured-california-163571053.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.65),
            colorBlendMode: BlendMode.darken,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 40),
            child: SingleChildScrollView(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //new FlutterLogo(
                  //size: 89,
                  //),
                  new Form(
                    child: Theme(
                      data: new ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.lightBlue,
                        inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                                color: Colors.blue, fontSize: 20.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: new Column(
                          children: <Widget>[
                            TextField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  fillColor: Colors.black26,
                                  filled: true,
                                  hintText: "Enter First Name :",
                                  labelText: "First Name",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              keyboardType: TextInputType.name,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  fillColor: Colors.black26,
                                  filled: true,
                                  hintText: "Enter Last Name :",
                                  labelText: "Last Name",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              keyboardType: TextInputType.name,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  fillColor: Colors.black26,
                                  filled: true,
                                  hintText: "Enter Email :",
                                  labelText: "Email",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(Icons.contact_phone),
                                  fillColor: Colors.black26,
                                  filled: true,
                                  hintText: "Enter Contact No. :",
                                  labelText: "Contact No.",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              keyboardType: TextInputType.phone,
                              //obscureText: true,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(Icons.password),
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obsecureText = !_obsecureText;
                                        });
                                      },
                                      child: Icon(_obsecureText
                                          ? Icons.visibility_off
                                          : Icons.visibility)),
                                  fillColor: Colors.black26,
                                  filled: true,
                                  hintText: "Enter Password :",
                                  labelText: "Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              keyboardType: TextInputType.text,
                              obscureText: _obsecureText,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(Icons.password),
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obsecureText = !_obsecureText;
                                        });
                                      },
                                      child: Icon(_obsecureText
                                          ? Icons.visibility_off
                                          : Icons.visibility)),
                                  fillColor: Colors.black26,
                                  filled: true,
                                  hintText: "Enter Confirm Password :",
                                  labelText: "Confirm Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              keyboardType: TextInputType.text,
                              obscureText: _obsecureText,
                            ),
                            // new Padding(padding: const EdgeInsets.only(top: 10.0)),
                            // TextButton(
                            //   onPressed: () {},
                            //   child: const Text('Forgot Password?'),
                            // ),
                            SizedBox(
                              height: 20,
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.end,
                            //   children: [
                            //     new TextButton(
                            //       onPressed: () {},
                            //       child: const Text(
                            //         'Forgot Password?',
                            //         style: TextStyle(color: Colors.white),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            new Padding(
                                padding: const EdgeInsets.only(top: 10.0)),
                            new MaterialButton(
                              onPressed: () => {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AfterLogin(),
                                  ),
                                )
                              },
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: new Text(
                                "Create New Account",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black,
                                          offset: Offset(2, 1)),
                                    ]),
                              ),
                              splashColor: Colors.greenAccent,
                            ),
                            /*new Padding(
                                padding:
                                    const EdgeInsets.only(top: 40.0, right: 1)), */
                            /*   SizedBox(
                              height: 20,
                            ), 
                            */ /*
                            SizedBox(
                              height: 100,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'register');
                                  },
                                  child: const Text(
                                    'Create An Account ? / Sign Up !',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),  
                                /* FadeInDown(
                                    child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                   child: Stack(
                                    children: [
                                      InternationalPhoneNumberInput(
                                        onInputChanged: (value) {},
                                      ) 
                                    ],
                                  ), 
                                )) */
                              ],
                            ), */
                            /*
                             Checkbox(
                    value: _checkBox,
                    checkColor: Colors.white,
                    activeColor: Colors.deepPurple,
                    tristate: true,
                    onChanged: (val) {
                      setState(() {
                        _checkBox = val;
                      });
                    },
                  ),
            */
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
