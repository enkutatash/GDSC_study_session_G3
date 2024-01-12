import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:book/pages/bothRecAndBook.dart';
import 'package:book/providers/user_provider.dart';
import 'package:provider/provider.dart';

class BookDetail extends StatefulWidget {
  final String name, images, aboutbook, author;
  const BookDetail(this.name, this.images, this.author, this.aboutbook,
      {super.key});

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
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
                        SizedBox(
                            height: height * 0.35,
                            child: ImageFiltered(
                              imageFilter:
                                  ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                              child: Image.asset(
                                widget.images,
                                fit: BoxFit.cover,
                                width: width,
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                      )),
                                  const Icon(
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
                                  widget.images,
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
            Text(widget.aboutbook),
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
            Text(widget.author),
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
                  children: execludeselected(BuildBook(widget.name,
                      widget.images, widget.aboutbook, widget.author)),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            return context.read<UserProvider>().addFavoriteBook(widget.name);
          },
          foregroundColor: Colors.red.shade500,
          backgroundColor: Colors.blue.shade400,
          child: const Icon(
            Icons.favorite,
          )),
    );
  }
}
