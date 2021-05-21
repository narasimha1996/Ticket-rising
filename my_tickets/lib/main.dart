import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Tickets",
        theme: ThemeData(primarySwatch: Colors.grey),
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
        title: Text(
      "My Tickets",
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.white, fontSize: 20.0),
    )),
    body: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(10.0),
      child: Text("Customer Service",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold))
            ),
         
          ListView.builder(
          shrinkWrap:true ,
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: (){
                if([index] = "Return or Exchange" != null){
                 return Navigator.push(context,MaterialPageRoute(builder: (context)=>
                  ));
            // }else if([index]= 'Refund'){
            //     return Navigator.push(context,MaterialPageRoute(builder: (context)=>
            // }else if([index]= 'General'){
            //     return Navigator.push(context,MaterialPageRoute(builder: (context)=>
            // }else if([index]= 'Wrong item Recieved'){
            //     return Navigator.push(context,MaterialPageRoute(builder: (context)=>
            // ignore: empty_statements
            };
              // ignore: unused_label
              child: ListTile(
              leading: Icon(icons[index],size: 35.0,),
              title: Text(names[index],style: TextStyle(
                fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.keyboard_arrow_right),
           );
            })
        )
        ],
      ),
    ));
  }
}
