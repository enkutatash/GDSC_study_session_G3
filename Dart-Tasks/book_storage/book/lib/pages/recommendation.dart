import 'package:flutter/material.dart';
import 'package:book/pages/bothRecAndBook.dart';

class Recommendations extends StatefulWidget {
  const Recommendations({super.key});

  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Recommendation",
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
