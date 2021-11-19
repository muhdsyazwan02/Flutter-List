import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  late int valueInt;

  late int _fruitsIndex = 0;

  @override
  Widget build(BuildContext context) {
    var fruits = ['No fruit', 'apple', 'orange', 'rambutan'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fruit List'),
        ),
        body: Column(children: [
          const Padding(padding: EdgeInsets.all(20)),
          TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a number to display the list item'),
              onChanged: (value) {
                valueInt = int.parse(value);
                print("The value entered is : $valueInt");
              }),
          RaisedButton(
              child: Text('Submit'),
              elevation: 8,
              onPressed: () => {
                    setState(() {
                      _fruitsIndex = valueInt;
                    })
                  }),
          Text(fruits.elementAt(_fruitsIndex))
        ]),
      ),
    );
  }
}
