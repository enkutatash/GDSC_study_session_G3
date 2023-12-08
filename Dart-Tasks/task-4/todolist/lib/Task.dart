import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task(this.name, this.description, this.date, {super.key});
  final String name;
  final String description;
  final String date;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black38,
          spreadRadius: 1,
        )
      ]),
      height: height * 0.1,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: SizedBox(
                  width: width * 0.25,
                  child: Text(
                    name[0],
                    style: const TextStyle(fontSize: 20),
                  )),
            ),
            SizedBox(
                width: width * 0.4,
                child: Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
            Text(
              date,
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
