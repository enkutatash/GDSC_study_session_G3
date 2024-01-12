import 'package:flutter/material.dart';
import 'package:book/data/bookstore.dart';
import 'package:book/pages/bookdetain.dart';

List<Widget> buildListBook() {
  List<Widget> eachBook = [];
  availableBook.forEach((key, value) {
    Widget finalizedIcon = BuildBook(key, value[0], value[1], value[2]);
    eachBook.add(finalizedIcon);
  });
  return eachBook;
}

List<Widget> recommendationFirst() {
  List<Widget> eachBook = buildListBook();
  List<Widget> first = [];
  for (int i = 0; i < 5; i++) {
    first.add(eachBook[i]);
  }
  return first;
}

List<Widget> execludeselected(Widget selected) {
  List<Widget> eachBook = buildListBook();
  List<Widget> first = [];
  for (int i = 0; i < 5; i++) {
    if (eachBook[i] != selected) {
      first.add(eachBook[i]);
    }
  }
  return first;
}

class BuildBook extends StatefulWidget {
  final String name, images, aboutbook, author;
  const BuildBook(this.name, this.images, this.aboutbook, this.author,
      {super.key});

  @override
  State<BuildBook> createState() => _BuildBookState();
}

class _BuildBookState extends State<BuildBook> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: height * 0.25,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BookDetail(widget.name, widget.images,
                            widget.author, widget.aboutbook);
                      }));
                    },
                    child: Image.asset(widget.images))),
          ),
        ),
        Text(widget.name),
      ],
    );
  }
}
