import 'package:flutter/material.dart';
import 'package:todo/taskdetail.dart';

Map<String, Color> map_color = {
  'red': Colors.red,
  'yellow': Colors.yellow,
  'green': Colors.green,
};

class Task extends StatefulWidget {
  final String name, description, duedate, color;

  const Task(this.name, this.description, this.duedate, this.color,
      {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Detail(widget.name, widget.description, widget.duedate,widget.color);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          height: height * 0.07,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 5,
                  blurRadius: 4,
                  color: Colors.black45,
                  blurStyle: BlurStyle.outer,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.2,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.name[0],
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    Text(
                     widget.duedate,
                      style: const TextStyle(fontSize: 10),
                    ),
                    VerticalDivider(
                      thickness: 1.5,
                      color: map_color[widget.color],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}
