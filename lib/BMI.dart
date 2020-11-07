import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  double BMI = 0;
  double height = 0;
  double weight = 0;
  double temp = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
       child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Expanded(
                    flex: 4,
                    child: Container(
                      padding:EdgeInsets.all(20.0),
                      child:
                      Center(
                        child: Text(
                          '$BMI',
                          style: TextStyle(
                            fontSize: 80.0,
                            color: Colors.black,

                          ),
                        ),
                      ),
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    )
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Text(
                              'Enter Data to generate BMI',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                              keyboardType: TextInputType.number ,
                              decoration: InputDecoration(
                                  hintText: 'Enter Height(in metres)',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2.0)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2.0))),
                              validator: (val) =>
                              double.parse(val) > 0 ? 'Invalid Height' : null,
                              onChanged: (val) {
                                height = double.parse(val);
                                if(weight > 0) {
                                  setState(() {
                                    temp = weight/(height*height);
                                    BMI = double.parse(temp.toStringAsFixed(1));
                                  });
                                }
                              }),
                          SizedBox(height: 10.0),
                          TextFormField(
                              keyboardType: TextInputType.number ,
                              decoration: InputDecoration(
                                  hintText: 'Enter Weight(in kilograms)',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2.0)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2.0))),
                              validator: (val) =>
                              double.parse(val) > 0 ? 'Invalid Weight' : null,
                              onChanged: (val) {
                                weight = double.parse(val);
                                if(height > 0) {
                                  setState(() {
                                    temp = weight/(height*height);
                                    BMI = double.parse(temp.toStringAsFixed(1));
                                  });
                                }
                              }),

                        ],
                      ),
                      width: 350,

                      decoration: new BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(30.0)),
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    )
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                )
              ],
            )
        ),

    );
  }
}