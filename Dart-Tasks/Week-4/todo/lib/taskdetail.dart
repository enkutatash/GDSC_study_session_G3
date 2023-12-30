import 'package:flutter/material.dart';
import 'package:todo/Taskslist.dart';

class Detail extends StatefulWidget {
  final String name, description, duedate, color;

  const Detail(this.name, this.description, this.duedate, this.color,
      {super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
      double progress =0;

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
        title: const Text("Task Detail"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          Image.asset(
            "image/todolist.png",
            height: height * 0.30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Title",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blueGrey.shade200,
            ),
            height: height * 0.05,
            width: width,
            child: Text(
              widget.name,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blueGrey.shade200,
            ),
            height: height * 0.1,
            width: width,
            child: Text(widget.description),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Deadline",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blueGrey.shade200,
            ),
            width: width,
            height: height * 0.05,
            child: Text(widget.duedate),
          ),
          Slider(
              value: progress,
              min: 0,
              max: 5,
              onChanged: (double range) {
                setState(() {
                  progress = range;
                });
              }),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (progress <= 2) {
                    allTasks[widget.name]?[2] = "red";
                  } else if (progress < 5) {
                    allTasks[widget.name]?[2] = "yellow";
                  } else {
                    allTasks[widget.name]?[2] = "green";
                  }
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Taskslist();
                }));
              },
              child: const Text("OK"))
        ]),
      ),
    );
  }
}
