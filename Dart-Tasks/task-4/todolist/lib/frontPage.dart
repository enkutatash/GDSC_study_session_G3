import 'package:flutter/material.dart';
import 'package:todolist/Tasklist.dart';

class frontPage extends StatelessWidget {
  const frontPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
        backgroundColor: Colors.red.shade300,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(height: height*0.7,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Tasklist();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.blue.shade300),
                ),
                child: const Text("Get started")),
          ],
        ),
      ),
    );
  }
}
