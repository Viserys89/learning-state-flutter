import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => MainMenuState();
}

class MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, actions: [
        IconButton(
            onPressed: () {
              Get.bottomSheet(Container(
                height: 250,
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.toNamed('/GetBuilder');
                        },
                        child: const Text(
                          "GetBuilder",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {
                          Get.toNamed('/StateManagement');
                        },
                        child: const Text(
                          "State Management",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {
                          Get.toNamed('/InputForm');
                        },
                        child: const Text(
                          "Input Form",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {
                          Get.toNamed('/CounterPage');
                        },
                        child: const Text(
                          "Counter",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {
                          Get.toNamed('/ListScreen');
                        },
                        child: const Text(
                          "List Screen",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ));
            },
            icon: Icon(Icons.edit_note_outlined))
      ]),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/getx.png',
                  width: 400,
                  height: 200,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/StateManagement');
                    },
                    child: Container(
                      width: 200,
                      height: 170,
                      color: Colors.purple,
                      child: const Center(
                        child: Text(
                          'OBX GetBuilder',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/inputForm');
                    },
                    child: Container(
                      width: 200,
                      height: 170,
                      color: Colors.purple,
                      child: const Center(
                        child: Text(
                          'Utilities',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Container(
                      width: 200,
                      height: 170,
                      color: Colors.purple,
                      child: const Center(
                        child: Text(
                          'Named Navigation',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Container(
                      width: 200,
                      height: 170,
                      color: Colors.purple,
                      child: const Center(
                        child: Text(
                          'Depedency',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
