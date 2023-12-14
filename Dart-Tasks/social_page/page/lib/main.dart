import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<Map<String, dynamic>> user = [
  {
    "name": "Susan Lee",
    "design": "lorem ispsum dfl kdlk dfv",
    "date": "12/3/2023"
  },
  {
    "name": "Susan Lee",
    "design": "lorem ispsum dfl kdlk dfv",
    "date": "12/3/2023"
  },
  {
    "name": "Susan Lee",
    "design": "lorem ispsum dfl kdlk dfv",
    "date": "12/3/2023"
  },
  {
    "name": "Susan Lee",
    "design": "lorem ispsum dfl kdlk dfv",
  },
];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade400,
          leading: const Icon(Icons.menu),
          title: const Text("Basics"),
          actions: const [
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
        ),
        body: ListView.builder(
          itemCount: user.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
               elevation: 2,
               clipBehavior: Clip.hardEdge,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
               ),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(100),
                  child: Image.asset("image/todo.jpg")),
                title: Text('${user[index]["name"]}'),
                subtitle: Text('${user[index]["design"]}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
