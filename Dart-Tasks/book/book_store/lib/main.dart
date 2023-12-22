import 'package:flutter/material.dart';
import 'package:book_store/MainBody.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FrontPage(),
    );
  }
}

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const Icon(Icons.sort),
        title:const Text("GDSC Book Store",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body:const MainBody(),
      
      bottomNavigationBar: BottomNavigationBar(
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.note,color: Colors.black,),label: '',),
       BottomNavigationBarItem(icon: Icon(Icons.book,color: Colors.black,),label: ''),
       BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: ''),
       BottomNavigationBarItem(icon: Icon(Icons.my_library_books_outlined,color: Colors.black,),label: ''),
       BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: '')
      ]),
    );
  }
}