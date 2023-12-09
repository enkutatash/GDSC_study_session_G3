import 'package:flutter/material.dart';

class TaskDescription extends StatelessWidget {
  const TaskDescription(this.name, this.duedate, this.description, {super.key});
  final String name;
  final String duedate;
  final String description;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Task Detail"),
            Icon(Icons.more_vert),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
            children: [
              Image.asset("image/todo.jpg"),
              const SizedBox(height: 18,),
             const Text("Title",style: TextStyle(fontSize: 20),),
              Container(
                height: height*0.1,
                width: width*0.8,
                color: Colors.blueGrey.shade100,
               child: Text(name),
              ),
              const Text("Description",style: TextStyle(fontSize: 20),),
              Container(
                height: height*0.2,
                width: width*0.8,
                color: Colors.blueGrey.shade100,
               child: Text(description),
            
              ),
               const Text("Deadline",style: TextStyle(fontSize: 20),),
              Container(
                height: height*0.08,
                width: width*0.8,
                color: Colors.blueGrey.shade100,
               child: Text(duedate),
              )
            ],
            ),
          ),
        ),
      ),
    );
  }
}
