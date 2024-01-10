import 'package:flutter/material.dart';
import 'package:todo/Taskslist.dart';

class EditTask extends StatefulWidget {
  final String name, description, duedate, color;
  const EditTask(this.name, this.description, this.duedate, this.color,
      {super.key});

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _taskName = TextEditingController();
  final _taskDescription = TextEditingController();
  final String progress = '0';
  void update_task(
      String Name, String Description, String Duedate, String Color) {
    allTasks.remove(widget.name);
    allTasks[Name] = [Description, Duedate, Color];
  }

  DateTime _parseDateString(String dateString) {
    List<String> dateParts = dateString.split('-');
    int day = int.parse(dateParts[0]);
    int month = int.parse(dateParts[1]);
    int year = int.parse(dateParts[2]);
    return DateTime(year, month, day);
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
    _taskName.text = widget.name;
    _taskDescription.text = widget.description;
    selected = _parseDateString(widget.duedate);

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
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Update the Task",
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
                child: TextFormField(
                  controller: _taskName,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: "Task Name"),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Task Name";
                    }
                    return null;
                  },
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
              child: TextFormField(
                controller: _taskDescription,
                decoration: const InputDecoration(
                  hintText: "First",
                  border: InputBorder.none,
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Description";
                  }
                  return null;
                },
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
                if (_formKey.currentState!.validate()) {
                  update_task(
                    _taskName.text,
                    _taskDescription.text,
                    '${selected.day}-${selected.month}-${selected.year}',
                    progress,
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Taskslist();
                  }));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.black38,
                    width: width * 0.7,
                    content: Text(
                      '${_taskName.text} updated from your list',
                      style: const TextStyle(fontSize: 20),
                    ),
                    duration: const Duration(milliseconds: 3000),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ));
                }
              },
              child: const Text(
                "Update the Task",
                style: TextStyle(color: Colors.white),
              ),
            )),
          ]),
        ),
      ),
    );
  }
}
