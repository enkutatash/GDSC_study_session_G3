import 'package:flutter/material.dart';
import 'package:todo/Taskslist.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final _taskName = TextEditingController();
  final _taskDescription = TextEditingController();
  void new_task_create(String name, String description, String duedate) {
    allTasks.add([name, description, duedate]);
  }

  DateTime selected = DateTime.now();
  Future<void> _selected(BuildContext context) async {
    await showDatePicker(
            context: context,
            firstDate: DateTime.now(),
            lastDate: DateTime(2040))
        .then((value) {
      setState(() {
        selected = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.red.shade300,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create New Task",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: height * 0.001,
            color: Colors.black,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Main task Name",
                style: TextStyle(
                  color: Colors.red.shade300,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
              height: height * 0.06,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 4,
                        color: Colors.black45,
                        blurStyle: BlurStyle.outer)
                  ]),
              child: TextField(
                controller: _taskName,
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: "Task Name"),
              )),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Due date",
                style: TextStyle(
                  color: Colors.red.shade300,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    spreadRadius: 4,
                    blurRadius: 5,
                    blurStyle: BlurStyle.outer,
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${selected.day}-${selected.month}-${selected.year}'),
                IconButton(
                    onPressed: () => _selected(context),
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.red.shade300,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: TextStyle(
                  color: Colors.red.shade300,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 4,
                      color: Colors.black45,
                      blurStyle: BlurStyle.outer)
                ]),
            child: TextField(
              controller: _taskDescription,
              decoration: const InputDecoration(
                hintText: "First",
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Center(
              child: MaterialButton(
            minWidth: width * 0.45,
            height: height * 0.055,
            color: Colors.red.shade300,
            onPressed: () {
              new_task_create(_taskName.text, _taskDescription.text,
                  '${selected.day}-${selected.month}-${selected.year}');
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Taskslist();
              }));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.red.shade800,
                width: width*0.3,
                  content: Text('${_taskName.text} added to your list',style:const TextStyle(fontSize: 20),),
                  duration:const Duration(milliseconds: 3000),
                  padding:const EdgeInsets.symmetric(horizontal: 8),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  ));
            },
            child: const Text(
              "Add Task",
              style: TextStyle(color: Colors.white),
            ),
          ))
        ]),
      ),
    );
  }
}
