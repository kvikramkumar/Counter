import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();


}

class _MyAppState extends State<MyApp> {

  int count = 0;

  void incrementCount()
  {
    setState(() {
      count += 1;
    });
  }
  void decrementCount()
  {
    setState(() {
      count -= 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home : Scaffold(
        appBar : AppBar(
          title : Text("Counter"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Count: $count",
                style: const TextStyle(fontSize: 28.0),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: decrementCount,
                    child: const Icon(Icons.remove),
                    heroTag: 'decrement',
                  ),
                  const SizedBox(width: 20),
                  FloatingActionButton(
                    onPressed: incrementCount,
                    child: const Icon(Icons.add),
                    heroTag: 'increment',
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
