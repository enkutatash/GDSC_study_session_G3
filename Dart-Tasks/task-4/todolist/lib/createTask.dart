import 'package:flutter/material.dart';
import 'package:todolist/Tasklist.dart';

class createTask extends StatefulWidget {
  const createTask({super.key});

  @override
  State<createTask> createState() => _createTaskState();
}

class _createTaskState extends State<createTask> {
  void add_new_task(String name, String description,String day) {
    allTasks.add([name, description, day]);
  }
    Future<void> _selected(BuildContext context) async {
    await showDatePicker(
      context: context,
      //initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2130),
    ).then((value) {
      setState(() {
        selected = value!;
      });
    });
  }

  final _taskName = TextEditingController();
  final _taskDescription = TextEditingController();
   DateTime selected = DateTime.now();

  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;

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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            TextField(
              controller: _taskName,
              decoration: const InputDecoration(
                labelText: "Task",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Task Description",
              style: TextStyle(fontSize: 20, color: Colors.red.shade300),
            ),
            TextField(
              controller: _taskDescription,
              decoration: const InputDecoration(
                labelText: "First . . .",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Due date",
              style: TextStyle(fontSize: 20, color: Colors.red.shade300),
            ),
             Container(
              height: height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.red.shade300,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${selected.day}-${selected.month}-${selected.year}'),
          IconButton(
              onPressed: () => _selected(context),
              icon: const Icon(Icons.calendar_month_outlined))
        ],
      ),
             ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      add_new_task(_taskName.text, _taskDescription.text,'${selected.day}-${selected.month}-${selected.year}');

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Tasklist();
                      }));
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade300,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Add Task")),
            )
          ]),
        ),
      ),
    );
  }
}

