import 'package:flutter/material.dart';
import 'package:book/pages/bothRecAndBook.dart';
class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
         leading: const Icon(Icons.sort),
          title: const Text(
            "Available Books",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              Wrap(
                children: buildListBook(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
