import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:book/providers/user_provider.dart';
import 'package:book/providers/Skeleton.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=>UserProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Skeleton(),
    );
  }
}
