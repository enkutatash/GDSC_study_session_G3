import 'package:flutter/material.dart';
import 'package:book/pages/bothRecAndBook.dart';

class NewBook extends StatefulWidget {
  const NewBook({super.key});

  @override
  State<NewBook> createState() => _NewBookState();
}

class _NewBookState extends State<NewBook> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("New",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400)),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
            height: height * 0.3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: recommendationFirst()))
      ],
    );
  }
}
