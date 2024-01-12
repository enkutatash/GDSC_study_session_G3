import "package:flutter/material.dart";

class Leader extends StatelessWidget {
  const Leader({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    List<String> monthNames = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
    'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'
  ];

    return Card(
      // color: Colors.blue.shade600,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [
              Colors.blue.shade200, // Left (white)
              Colors.blue.shade600,  // Center (blue)
              Colors.blue.shade600,  // Right (blue)
              Colors.blue.shade200,
            ],
            stops:const [0.0, 0.5, 0.51, 1.0], // Adjust stops for smooth transition
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
                ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '${DateTime.now().day} ${monthNames[DateTime.now().month-1]} ${DateTime.now().year}',
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
    );
  }
}
