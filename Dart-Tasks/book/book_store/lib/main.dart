import 'package:flutter/material.dart';
//import 'package:book_store/AnimaPage.dart';
import 'package:lottie/lottie.dart';
import 'package:book_store/MainBody.dart';
import 'package:book_store/oneBook.dart';
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
      //home: const AnimaPage(),
      home: const AnimaPage(),
    );
  }
}

class AnimaPage extends StatefulWidget {
  const AnimaPage({super.key});

  @override
  State<AnimaPage> createState() => _AnimaPageState();
}

class _AnimaPageState extends State<AnimaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(child: Lottie.asset("image/animation/reading.json",height: MediaQuery.of(context).size.height*0.3,
          width: MediaQuery.of(context).size.width*0.5
          )),
          SizedBox(height: MediaQuery.of(context).size.height*0.4,),
        ElevatedButton(
           style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, 
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16), 
              elevation: 4, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), 
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FrontPage();
              }));
            },
            child: const Text("Start Reading"))
      ]),
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
        leading: const Icon(Icons.sort),
        title: const Text(
          "GDSC Book Store",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const MainBody(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.note,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.my_library_books_outlined,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: '')
      ]),
    );
  }
}
