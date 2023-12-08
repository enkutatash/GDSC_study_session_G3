import 'package:flutter/material.dart';

class createTask extends StatefulWidget {
  const createTask({super.key});

  @override
  State<createTask> createState() => _createTaskState();
}

class _createTaskState extends State<createTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Icon(
            Icons.more_vert,
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
           
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           const Text(
                        "Create new Task",
                        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
                        ),
                      ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Main task name",
              style: TextStyle(fontSize: 20, color: Colors.red.shade300),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Task",
                border: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.red)
                ),
                
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Task Description",
              style: TextStyle(fontSize: 20, color: Colors.red.shade300),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "First . . .",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)
                ),
                
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Due date",
              style: TextStyle(fontSize: 20, color: Colors.red.shade300),
            ),
            const Duedate(),
            const SizedBox(
              height: 10,
            ),
             const TextField(
              decoration: InputDecoration(
                labelText: "Description",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)
                ),
              ),),
            const SizedBox(
              height: 20,
            ),
          Center(
            child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red.shade300,
              foregroundColor: Colors.white,
            ),child: const Text("Add Task")),
          )
          ]),
        ),
      ),
    );
  }
}

class Duedate extends StatefulWidget {
  const Duedate({super.key});

  @override
  State<Duedate> createState() => _DuedateState();
}

class _DuedateState extends State<Duedate> {
  @override
  Widget build(BuildContext context) {
    DateTime selected = DateTime.now();
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height*0.1,
     decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: Colors.red.shade300,
        width: 1,
        
      )
     ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${selected.day}-${selected.month}-${selected.year}'),
          ElevatedButton(
            onPressed: () async {
              final DateTime? date = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000));
              if (date != null) {
                setState(() {
                  selected = date;
                });
              }
            },
            child: const Icon(Icons.calendar_month)),
        ],
      ),
    );
  }
}
