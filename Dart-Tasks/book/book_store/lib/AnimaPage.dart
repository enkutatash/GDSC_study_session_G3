import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:book_store/MainBody.dart';

class AnimaPage extends StatefulWidget {
  const AnimaPage({super.key});

  @override
  State<AnimaPage> createState() => _AnimaPageState();
}

class _AnimaPageState extends State<AnimaPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Lottie.asset("image/animation/reading.json"),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MainBody();
              }));
            },
            child: const Text("Start Reading"))
      ]),
    );
  }
}
