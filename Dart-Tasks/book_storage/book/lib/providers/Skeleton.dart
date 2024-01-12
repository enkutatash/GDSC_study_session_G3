import 'package:flutter/material.dart';
import 'package:book/pages/StickyNote.dart';
import 'package:book/pages/home_page.dart';
import 'package:book/pages/books.dart';
import 'package:book/pages/liked.dart';
import 'package:book/pages/profile.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  int selected = 2;
  final List<Widget> index = const [
    StickyNote(),
    Liked(),
    Home_Page(),
    Books(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index[selected],
      bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.black,
          onDestinationSelected: _selected,
          selectedIndex: selected,
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.sticky_note_2,
                  color: Colors.grey,
                ),
                label: ""),
            NavigationDestination(
                icon: Icon(
                  Icons.book,
                  color: Colors.grey,
                ),
                label: ""),
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: ""),
            NavigationDestination(
                icon: Icon(
                  Icons.library_books,
                  color: Colors.grey,
                ),
                label: ""),
            NavigationDestination(
                icon: Icon(
                  Icons.people,
                  color: Colors.grey,
                ),
                label: "")
          ]),
    );
  }

  void _selected(index) {
    setState(() {
      selected = index;
    });
  }
}
