import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  final Widget? child;
  const Splash({super.key,this.child});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => widget.child!),
        (Route<dynamic> route) => false,
      );
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: const Text("welcome to firebase")),
    );
  }
}
