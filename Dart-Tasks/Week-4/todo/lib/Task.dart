import 'package:flutter/material.dart';
import 'package:todo/taskdetail.dart';

class Task extends StatelessWidget {
  final String name, description, duedate;
  const Task(this.name, this.description, this.duedate, {super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Detail(name, description, duedate);
        }));
      },
      child: Card(
        elevation: 2,
        child: ListTile(
          leading: Text(name[0], style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          title: Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style:const TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
           const Spacer(flex: 2,),
            Text(duedate,style: const TextStyle(fontSize: 10),),
          ],
          ),
        ),
      )
    );
  }
}
