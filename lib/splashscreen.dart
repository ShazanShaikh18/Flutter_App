import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter__app/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(title: ''),
            ));
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 941,
                  color: Colors.black,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset("lib/images/my_gif1.gif"),
                          Divider(
                            color: Colors.black,
                            height: 20,
                          ),
                          Text(
                            'Flutter',
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                    color: Colors.green,
                                    offset: Offset(7.0, 2.5),
                                    blurRadius: 10)
                              ],
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed,
                              decorationColor: Colors.black,
                              decorationThickness: 1.5,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Container(
            //   padding: EdgeInsets.only(top: 200),
            //   color: Colors.black,
            //   child: Center(
            //       // child: Text(
            //       //   'Flutter',
            //       //   style: TextStyle(
            //       //     shadows: [
            //       //       Shadow(
            //       //           color: Colors.red,
            //       //           offset: Offset(6.0, 1.5),
            //       //           blurRadius: 10)
            //       //     ],
            //       //     fontSize: 65.0,
            //       //     fontWeight: FontWeight.bold,
            //       //     fontStyle: FontStyle.italic,
            //       //     color: Colors.white,
            //       //     decoration: TextDecoration.underline,
            //       //     decorationStyle: TextDecorationStyle.dashed,
            //       //     decorationColor: Colors.black,
            //       //     decorationThickness: 1.5,
            //       //   ),
            //       // ),
            //       ),
            // ),
          ),
        ],
      ),
    );
  }
}
          




// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter__app/login.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();

//     Timer(
//       Duration(seconds: 5),
//       () {
//         Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//               builder: (context) => const LoginPage(title: ''),
//             ));
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.blue,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             FlutterLogo(size: 150),
//             Center(
//               child: Text(
//                 'Flutter',
//                 style: TextStyle(
//                   shadows: [
//                     Shadow(
//                         color: Colors.black,
//                         offset: Offset(6.0, 1.5),
//                         blurRadius: 10)
//                   ],
//                   fontSize: 65.0,
//                   fontWeight: FontWeight.bold,
//                   fontStyle: FontStyle.italic,
//                   color: Colors.white,
//                   decoration: TextDecoration.underline,
//                   decorationStyle: TextDecorationStyle.dashed,
//                   decorationColor: Colors.black,
//                   decorationThickness: 1.5,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






/* import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter__app/login.dart';
import 'package:flutter__app/splashscreen.dart';
import 'dart:async';

/*
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen.fadeIn(
      gradient: const LinearGradient(
        //begin: Alignment.topCenter,
        //end: Alignment.bottomCenter,
        colors: [
          Colors.red,
          Colors.blue,
        ],
      ),
      childWidget: SizedBox(
        height: 1000,
        child: Image.network(
            "https://png.pngtree.com/png-clipart/20220625/ourmid/pngtree-waving-fluttering-national-flag-of-india-png-image_5372622.png"),
      ),
      duration: const Duration(seconds: 3),
      animationDuration: const Duration(seconds: 3),
      onAnimationEnd: () => debugPrint("On Scale End"),
      defaultNextScreen: const LoginPage(),
    );
  }
}
*/
void main() {
  runApp(MyApp());
}
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
  
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          SecondScreen()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("GeeksForGeeks")),
      body: Center(
        child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
} */