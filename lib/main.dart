import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home : Scaffold(
      backgroundColor: Color.fromARGB(138, 110, 200, 245),
    appBar: AppBar(
      title: Center(
        child: Text('Counter Apps'),
      ),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(counter.toString(),
        style: TextStyle(
          fontSize: 50 + double.parse(counter.toString()), 
          color: Colors.black
        ),
        ),
        Text('You have pushed the button this many times :' , style: TextStyle(fontWeight: FontWeight.bold),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            }, 
            child: Icon(Icons.add)
            ),
          ElevatedButton(
          onPressed: () {
            setState(() {
               if(counter != 0) {
               counter--;
            }
            });
          }, 
          child: Icon(Icons.remove)
          ),
        ],),
      ],
    ),
    )
  );
  }
}
