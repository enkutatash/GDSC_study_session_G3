import 'package:flutter/material.dart';
import 'package:todolist/createTask.dart';
import 'package:todolist/Task.dart';

class Tasklist extends StatefulWidget {
  const Tasklist({super.key});

  @override
  State<Tasklist> createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("To do list"),
            Icon(Icons.more_vert),
          ],
        ),
      ),
      body: Column(children: [
        Container(
          width: width * 0.8,
          height: height * 0.3,
          child: Image.asset("image/todolist.png"),
        ),
        const Text(
          "Tasks list",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      const AllTaskwidget(),
        MaterialButton(
          height: height*0.05,
          minWidth: width*0.4,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const createTask();
              }));
            },
            color: Colors.red.shade300,
            child: const Text(
              "Create Task",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
      ]),
    );
  }
}

List allTasks = [
  ["UX/Ui", "Description", "8/3/10"],
  ["Reading", "Description", "8/3/10"],
  ["Study", "Description", "8/3/10"],
  ["Dart", "Description", "8/3/10"]
];

class AllTaskwidget extends StatelessWidget {
  const AllTaskwidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    List<Widget> taskandwidget = [];
    for (int i = 0; i < allTasks.length; i++) {
      Widget oneTaks = Task(allTasks[i][0], allTasks[i][1], allTasks[i][2]);
      taskandwidget.add(oneTaks);
      taskandwidget.add(const SizedBox(
        height: 0.01,
      ));
    }

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
         height: height * 0.4,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, children: taskandwidget),
        ),
      ),
    );
  }
}
