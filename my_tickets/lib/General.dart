// ignore: unused_import
import 'package:flutter/material.dart';

class General extends StatefulWidget {
  @override
  _GeneralState createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  List names = [
    "Unable to login/signup",
    "How to place an order ?",
    "Delivery availability to my location",
    "Various modes of payment",
    "Current offers and discounts",
    "Contact customer service"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        elevation: 8.0,
        title: Center(child: Text("General")),
      ),
      body: ListView.builder(
        itemCount: names.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: (){
              if (names[index] == "Unable to login/signup") {
                              return setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>Center()));
                              });
                            } else if (names[index]== "How to place an order ?") {
                              return setState(() {
                               
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>Center()));
                              });
                            } else if (names[index]== "Delivery availability to my location") {
                              return setState(() {
                            
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>Center()));
                              });
                            } else if (names[index]=="Various modes of payment") {
                              return setState(() {
                               
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>Center()
                                          ));
                              });
                            }else if (names[index]== "Current offers and discounts") {
                              return setState(() {
                               
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>Center()
                                          ));
                              });
                            }else if (names[index]== "Contact customer service") {
                              return setState(() {
                               
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>Center()
                                          ));
                              });
                            }
            },
                      child: ListTile(
                  title: Text(names[index], style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
          )),
    );
  }
}
