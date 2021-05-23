import 'package:flutter/material.dart';
import 'package:my_tickets/General.dart';
import 'package:my_tickets/Refund.dart';
import 'package:my_tickets/Wrong%20Item%20Recievced.dart';
import 'Return or Exchange.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Tickets",
        home: Tickets()),
  );
}

class Tickets extends StatefulWidget {
  @override
  _TicketsState createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  List<IconData> icons = [
    Icons.loop,
    // ignore: equal_keys_in_map
    Icons.attach_money,
    // ignore: equal_keys_in_map
    Icons.read_more,
    // ignore: equal_keys_in_map
    Icons.cancel_outlined
  ];
  List<String> names = [
    "Return or Exchange",
    "Refund",
    "General",
    "Wrong item Recieved"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.indigo[300],
            title: Text(
              "My Tickets",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Customer Service",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold))),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                          onTap: () {
                            if (names[index] == "Return or Exchange") {
                              return setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Exchange()));
                              });
                            } else if (names[index] == "Refund") {
                              return setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Refund()));
                              });
                            } else if (names[index] == "General") {
                              return setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => General()));
                              });
                            } else if (names[index] == "Wrong item Recieved") {
                              return setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            WrongItemRecieved()));
                              });
                            }
                          },
                          // ignore: unused_label
                          child: Card(
                            elevation: 8,
                            shadowColor: Colors.indigo[300],
                            child: ListTile(
                              leading: Icon(icons[index],
                                  size: 35.0, color: Colors.blue),
                              title: Text(
                                names[index],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                          )))
            ],
          ),
        ));
  }
}
