import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pet_firebase/screens/pet_ui.dart';

import 'screens/add_pet.dart';


void main() async{

  //Ensure that all the widgets are binding before running the firebase app
  WidgetsFlutterBinding.ensureInitialized();

  //Getting Firebase Instance in our app
  await Firebase.initializeApp();

  runApp( MaterialApp(
    home: MyApp(),
    theme: ThemeData.dark(),
  ));
}

var petList = [];

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void addPets(pet){
    setState(() {
      petList.add(pet);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AddPetScreen.addPets()
    );
  }
}
