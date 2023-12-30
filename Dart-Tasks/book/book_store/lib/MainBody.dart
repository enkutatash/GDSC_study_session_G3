import 'package:flutter/material.dart';

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                width: width * 0.78,
                height: height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 171, 170, 170)),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Looking For ...",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.03,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue.shade600,
                ),
                width: width * 0.09,
                height: height * 0.05,
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Card(
            color: Colors.blue.shade600,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '${DateTime.now().day},${DateTime.now().month},${DateTime.now().year}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.6,
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.pause,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: width * 0.4,
                            ),
                            const Icon(
                              Icons.pause,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const Center(
                            child: Text(
                          "Today a reader\n tomorow a",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                        ))
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LEADER",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 60),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.g_translate,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Row(
            children: [
              Text(
                "Categories",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
              )
            ],
          ),
          Wrap(
            children: [
              Card(
                  color: const Color.fromARGB(255, 171, 170, 170),
                  child: Container(
                    width: width * 0.30,
                    constraints: BoxConstraints(
                        minWidth: width * 0.25, maxWidth: width * 0.25),
                    height: height * 0.05,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.health_and_safety_outlined),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          const Text("Health")
                        ],
                      ),
                    ),
                  )),
              Card(
                  color: const Color.fromARGB(255, 171, 170, 170),
                  child: Container(
                    width: width * 0.30,
                    constraints: BoxConstraints(
                        minWidth: width * 0.25, maxWidth: width * 0.30),
                    height: height * 0.05,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          const Icon(Icons.science_outlined),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          const Text("Science")
                        ],
                      ),
                    ),
                  )),
              Card(
                  color: const Color.fromARGB(255, 171, 170, 170),
                  child: Container(
                    width: width * 0.30,
                    constraints: BoxConstraints(
                        minWidth: width * 0.25, maxWidth: width * 0.5),
                    height: height * 0.05,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          const Icon(Icons.history_edu_outlined),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          const Text("History")
                        ],
                      ),
                    ),
                  )),
              Card(
                  color: const Color.fromARGB(255, 171, 170, 170),
                  child: Container(
                    width: width * 0.35,
                    constraints: BoxConstraints(
                        minWidth: width * 0.25, maxWidth: width * 0.5),
                    height: height * 0.05,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          const Icon(Icons.laptop_chromebook),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          const Text("Technology")
                        ],
                      ),
                    ),
                  ))
            ],
          ),
          SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Recommendation",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400)),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/lewel.jpg")),
                      ),
                    ),
                    const Text("Lewel"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/themoon.jpg")),
                      ),
                    ),
                    const Text("Heart"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/themoon.jpg")),
                      ),
                    ),
                    const Text("The moon"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      width: width * 0.3,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/thebook.jpg")),
                      ),
                    ),
                    const Text("The book"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("New",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400)),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/lewel.jpg")),
                      ),
                    ),
                    const Text("Lewel"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/thebook.jpg")),
                      ),
                    ),
                    const Text("Heart"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/themoon.jpg")),
                      ),
                    ),
                    const Text("The moon"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.25,
                      width: width * 0.3,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("image/thebook.jpg")),
                      ),
                    ),
                    const Text("The book"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
