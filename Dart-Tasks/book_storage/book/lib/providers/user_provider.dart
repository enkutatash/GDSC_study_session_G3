import 'package:flutter/material.dart';
import 'package:book/data/bookstore.dart';

class UserProvider extends ChangeNotifier {
  List<String> favorite = [
];
  void addFavoriteBook(book) {
    favorite.add(book);
    notifyListeners();
  }

  void removeFavoriteBook(book) {
    favorite.remove(book);
    notifyListeners();
  }
}
