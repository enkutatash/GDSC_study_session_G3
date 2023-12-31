import 'dart:ui';
import 'package:flutter/material.dart';

Map<String, List> book = {
  "Cosmos": [
    "image/thebook",
    3.5,
    "Cosmos is one one of the most selling book in the world",
    "Cosmos is one of the best selling book all the time",
    review
  ],
};

Map<String, String> review = {
  "Gemechis": "This is an amazing book",
};

class oneBook extends StatefulWidget {
  const oneBook({super.key});
  // this.title, this.star, this.bookinfo, this.aboutAuthor, this.userReview,
  // {super.key});
  // final String title;
  // final double star;
  // final String bookinfo;
  // final String aboutAuthor;
  // final List<String> userReview;

  @override
  State<oneBook> createState() => _oneBookState();
}

class _oneBookState extends State<oneBook> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.grey.shade300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.3,
                  child: Stack(
                    children: [
                      Container(
                          height: height * 0.35,
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                            child: Image.asset(
                              "image/heart.jpg",
                              fit: BoxFit.cover,
                              width: width,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    )),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Container(
                              height: height * 0.15,
                              width: width * 0.9,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(),
                              child: Image.asset(
                                "image/heart.jpg",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "The Heart",
                  style: TextStyle(color: Colors.blue.shade300, fontSize: 30),
                ),
                const Text("Book by unknown"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: const Icon(
                        Icons.favorite,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Text(
                          "free",
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: const Icon(
                        Icons.share,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                VerticalDivider(
                  thickness: 1,
                  color: Colors.amber.shade300,
                ),
                const Text(
                  "Book Information",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Text("This book is one of the best seeling book all the time"),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                VerticalDivider(
                  thickness: 1.5,
                  color: Colors.amber.shade300,
                ),
                const Text(
                  "About Author",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Text("This book is one of the best seeling book all the time"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("User Review",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.person),
              subtitle: Text("John"),
              title: Text("This is really good book"),
              trailing: Text("oct-12-2023"),
              isThreeLine: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Related Book",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/lewel.jpg")),
                      ),
                    ),
                    const Text("Lewel"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/themoon.jpg")),
                      ),
                    ),
                    const Text("Heart"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/themoon.jpg")),
                      ),
                    ),
                    const Text("The moon"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      width: width * 0.3,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/thebook.jpg")),
                      ),
                    ),
                    const Text("The book"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
