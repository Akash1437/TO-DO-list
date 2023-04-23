//import 'dart:ffi';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController =
      TextEditingController(); //text editing controller for text field
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Event ',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    TextField(
                      // assigning textcontroller to text field

                      controller: _textEditingController,
                      autofocus: true,
                      decoration: InputDecoration(
                          //  border: InputBorder.none,
                          prefix: Icon(
                            Icons.calendar_month,
                            color: Colors.white70,
                          ),
                          //labelText: "Event",

                          // icon: Icons.calculate,
                          filled: true,
                          fillColor: Colors.purple,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Builder(builder: (context) {
                      return ElevatedButton(
                        onPressed: () {
                          //extract text from textfield
                          String newEventText = _textEditingController.text;
                          Navigator.of(context).pop(
                              newEventText); //we can any variable  in pop conveyed/described back to where from this new event wads called
                        },
                        child: Text(
                          "ADD",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// BACKUP CODE
// import 'package:flutter/material.dart';
//
// class NewEventScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _NewEventScreen();
//
// }
//
// class _NewEventScreen extends State<NewEventScreen> {
//   final TextEditingController _textEditingController = TextEditingController();//text editing controller for text field
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('New Event '),
//       ),
//       body: Column(
//         children: [
//           TextField(// assigning textcontroller to text field
//             controller: _textEditingController,
//           ),
//           Builder(
//               builder: (context) {
//                 return ElevatedButton(onPressed: () {//extract text from textfield
//                   String newEventText = _textEditingController.text;
//                   Navigator.of(context).pop(newEventText);//we can any variable  in pop conveyed/described back to where from this new event wads called
//                 }, child: Text('ADD'));
//               }
//           ),
//         ],
//       ),
//     );
//   }
// }
