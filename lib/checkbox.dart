import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool valuetitle = true;

  void _onclicked(val) {
    print("value: " + val.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CodingMSTR.com",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.normal, fontSize: 18),
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
              child: Row(children: <Widget>[
                SizedBox(
                  height: 40.0,
                  width: 35.0,
                  child: Checkbox(
                    value: valuetitle,
                    onChanged: (value) {
                      _onclicked(valuetitle);
                      if (valuetitle) {
                        setState(() {
                          valuetitle = false;
                        });
                      } else {
                        setState(() {
                          valuetitle = true;
                        });
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                  width: 140.0,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                    child: Text(
                      'Show Vehicle Name',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
    );
  }
}
