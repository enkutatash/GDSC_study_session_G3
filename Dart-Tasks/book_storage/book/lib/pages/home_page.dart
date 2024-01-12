import 'package:flutter/material.dart';
import 'package:book/pages/leader.dart';
import 'package:book/pages/icons.dart';
import 'package:book/pages/recommendation.dart';
import 'package:book/pages/newBook.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.sort),
          title: const Text(
            "GDSC Book Store",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(children: [
              Row(
                children: [
                  Container(
                    width: width * 0.84,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue.shade100),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Looking For ...",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.shade600,
                    ),
                    width: width * 0.06,
                    height: height * 0.05,
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const Leader(),
              IconBuild(),
              Recommendations(),
              NewBook(),
            ])));
  }
}
