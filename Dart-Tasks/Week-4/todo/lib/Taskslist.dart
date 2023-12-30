import 'package:flutter/material.dart';
import 'package:todo/NewTask.dart';
import 'package:todo/Task.dart';

class Taskslist extends StatefulWidget {
  const Taskslist({super.key});

  @override
  State<Taskslist> createState() => _TaskslistState();
}

class _TaskslistState extends State<Taskslist> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.red.shade300,
          ),
        ),
        title: const Text("Todo list"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Image.asset(
              "image/front.jpg",
              width: width * 0.8,
              height: height * 0.30,
            ),
          ),
          const Row(
            children: [
              Text(
                "Tasks list",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.008,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height * 0.40,
              child: const TaskWidget(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: MaterialButton(
                  minWidth: width * 0.35,
                  height: height * 0.06,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const NewTask();
                    }));
                  },
                  color: Colors.red.shade300,
                  child: const Text(
                    "Create Task",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ]),
      ),
    );
  }
}

Map<String, List<String>> allTasks = {
  "UX/Ui": ["Description", "8/3/10", 'red'],
  "Reading": ["Description", "8/3/10", 'red'],
  "Study": ["Description", "8/3/10", 'green'],
  "Dart": ["Description", "8/3/10", 'green'],
  "Dart2": ["Description", "8/3/10", 'green'],
};

class TaskWidget extends StatefulWidget {
  const TaskWidget({super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    List<Widget> eachTask = [];
    var height = MediaQuery.of(context).size.height;
    allTasks.forEach((key, value) {
      Widget one = Task(key, value[0], value[1], value[2]);
      eachTask.add(one);
      eachTask.add(
        SizedBox(
          height: height * 0.02,
        ),
      );
    });
    return ListView(
      padding: const EdgeInsets.all(8),
      children: eachTask,
    );
  }
}
