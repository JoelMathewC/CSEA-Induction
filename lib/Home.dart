import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: SizedBox()),

          Expanded(
            flex: 2,
            child: Image.asset('assets/images/img.jpg'),),



          Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "Masks of a Digital Age",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),
                ),
              )),
        ],
      ),
    );

    // home: Scaffold(
    //     backgroundColor: Colors.white,
    //     appBar: AppBar(
    //     backgroundColor: Colors.white,
    //     title: Center(
    //     child: Text(
    //     'CSEA',
    //     style: TextStyle(
    //     fontSize: 30.0,
    //     fontWeight: FontWeight.bold,
    //     color: Colors.black,
    // ),
    // ),
    // ),
    // ),
  }
}
