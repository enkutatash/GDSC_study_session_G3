import "package:flutter/material.dart";
import 'package:book/data/bookstore.dart';
import 'package:book/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:book/pages/bothRecAndBook.dart';

class Liked extends StatefulWidget {
  const Liked({super.key});

  @override
  State<Liked> createState() => _LikedState();
}

class _LikedState extends State<Liked> {
  @override
  Widget build(BuildContext context) {
    final userProvider = context.watch<UserProvider>();
    return GridView.builder(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0, 
      ),
        itemCount: userProvider.favorite.length,
        itemBuilder: (context, index) {
          String select = userProvider.favorite[index];
          List<String>? values = availableBook[select];
          if (values != null && values.length >= 3) {
          return BuildBook(select, values[0], values[1], values[2]);
        } else {
          return Container(); 
        }
        });
  
        }
  }

