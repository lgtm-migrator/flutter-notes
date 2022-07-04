import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {

                  },
                  child: const Text('Default Bottom Navigation')),
              const SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text('Advanced  Bottom Navigation'))
            ],
          ),
        ),
      ),
    );
  }
}
