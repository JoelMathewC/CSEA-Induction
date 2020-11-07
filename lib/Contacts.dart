import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                    child: SizedBox()),

                Expanded(
                    flex: 3,
                    child: Container(
                      padding:EdgeInsets.all(20.0),
                      child:
                      Column(
                        children: [
                          SizedBox(height: 10,),
                          Center(
                            child: Text(
                              'Contact Us',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Center(
                            child: Center(
                              child: Text(
                                'Computer Science and Engineering Association,\nNational Institute of Technology Calicut,\nNITC Campus P.O., Kozhikode\nPIN: 683 601\nEmail: csea@nitc.ac.in',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      width: 330,

                    )
                ),


                Expanded(
                    flex: 1,
                    child: SizedBox()),
              ],
            )
          ),
    );
  }
}
