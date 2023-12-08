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
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width*0.4,
              height: MediaQuery.of(context).size.height*0.085,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Tasklist();
                  }));
                },
              color: Colors.red.shade300,

                child: const Text("Get started",style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
