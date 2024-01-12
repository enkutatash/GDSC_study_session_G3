import 'package:flutter/material.dart';

Map<String, IconData> iconsCatagory = {
  "Health": Icons.health_and_safety_outlined,
  "Science": Icons.science_outlined,
  "History": Icons.history_edu_outlined,
  "Technology": Icons.laptop_chromebook,
};

class IconBuild extends StatefulWidget {
  const IconBuild({super.key});

  @override
  State<IconBuild> createState() => _IconBuildState();
}

class _IconBuildState extends State<IconBuild> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text(
              "Categories",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
            )
          ],
        ),
        LetsBuild(),
      ],
    );
  }
}

class LetsBuild extends StatefulWidget {
  const LetsBuild({super.key});

  @override
  State<LetsBuild> createState() => _LetsBuildState();
}

class _LetsBuildState extends State<LetsBuild> {
  @override
  Widget build(BuildContext context) {
    List<Widget> eachicon = [];
    iconsCatagory.forEach((key, value) {
      Widget finalizedIcon = BuildIcon(key, value);
      eachicon.add(finalizedIcon);
    });
    return Wrap(
      spacing: 0,
      children: eachicon,
    );
  }
}

class BuildIcon extends StatelessWidget {
  final String name;
  final IconData iconname;
  const BuildIcon(this.name, this.iconname, {super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Card(
        color: Color.fromARGB(255, 199, 210, 212),
        child: Container(
          width: width * 0.30,
          constraints:
              BoxConstraints(minWidth: width * 0.25, maxWidth: width * 0.25),
          height: height * 0.05,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: Row(
              children: [
                Icon(iconname),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(name)
              ],
            ),
          ),
        ));
  }
}
