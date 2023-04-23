import 'package:event_scheduler_2/new_event.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list = [
    Text(
      "TASKS",
    ),
    //Text("Event 2"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   colorScheme: ColorScheme(
      //   brightness: Brightness.light,
      //   primary: Colors.blue.shade900,
      //   onPrimary: Colors.white,
      //   // Colors that are not relevant to AppBar in LIGHT mode:
      //   primaryVariant: Colors.grey,
      //   secondary: Colors.grey,
      //   secondaryVariant: Colors.grey,
      //   onSecondary: Colors.grey,
      //   background: Colors.grey,
      //   onBackground: Colors.grey,
      //   surface: Colors.grey,
      //   onSurface: Colors.grey,
      //   error: Colors.grey,
      //   onError: Colors.grey,
      //   ),
      // ),

      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Event Scheduler'),
        ),
        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((context, index) => _list[index])),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () async {
              String newText = await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      NewEventScreen())); //to receive the information which will be returned by new event

              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => NewEventScreen()));
              setState(() {
                _list.add(Text(
                  newText,
                ));
              });
            },
            child: Icon(
              Icons.add,
              color: Colors.indigo,
            ),
          );
        }),
      ),
    );
  }
}
