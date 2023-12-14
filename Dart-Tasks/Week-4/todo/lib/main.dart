import 'package:flutter/material.dart';
import 'package:todo/Taskslist.dart';

void main() {
  runApp(const Mainpage());
}

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todolist",
      theme: ThemeData(
        //useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Frontpage(),
    );
  }
}

class Frontpage extends StatefulWidget {
  const Frontpage({super.key});

  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
   
    return Scaffold(
      
      body: Container(
        color: Colors.red.shade300,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           
              Image.asset(
                "image/todo.jpg",
                width: width,
                height: height * 0.4,
              ),
              SizedBox(
                height: height * 0.2,
              ),
              MaterialButton(
                color: Colors.blue.shade400,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Taskslist();
                  }));
                },
                minWidth: width * 0.5,
                height: height * 0.05,
                child: const Text("Get started",style: TextStyle(color: Colors.white),),
              )
            ],
          )),
        ),
      ),
    );
  }
}
