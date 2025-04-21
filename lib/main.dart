import 'package:flutter/material.dart';
import 'package:events/pages/home.dart';
import 'package:provider/provider.dart';
import 'package:events/provider/favourite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return   ChangeNotifierProvider(
      create: (context) {return Favourite();},
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
