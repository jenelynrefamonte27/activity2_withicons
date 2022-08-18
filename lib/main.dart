// Day 1 - Fluter Essentials

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const MyHomePage(title: ' '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1 `Scaffold` is 1 screen in the app.
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  height: 210,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    top: 16,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      color: Colors.purple,
                      height: 64,
                      width: 64,
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/440px-Elon_Musk_Royal_Society_%28crop2%29.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(
                          left: 16,
                          top: 16,
                        ),
                        child: const Text("Elon Musk",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 16,
                        top: 8,
                      ),
                      child: Text(
                        "Chief Executive Officer, Tesla",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(height: 3),
            const SizedBox(height: 16),
            const ProfileMenu(
              iconData: Icons.person,
              menuName: 'Personal Data',
            ),
            const SizedBox(height: 5),
            const ProfileMenu(
              iconData: Icons.settings,
              menuName: 'Settings',
            ),
            const SizedBox(height: 5),
            const ProfileMenu(
              iconData: Icons.description,
              menuName: 'E-Statement',
            ),
            const SizedBox(height: 5),
            const ProfileMenu(
              iconData: Icons.favorite,
              menuName: 'Referral Code',
            ),
            const Divider(height: 20),
            const ProfileMenu(
              iconData: Icons.pending,
              menuName: 'FAQs',
            ),
            const SizedBox(height: 5),
            const ProfileMenu(
              iconData: Icons.edit_note,
              menuName: 'Our Handbook',
            ),
            const SizedBox(height: 5),
            const ProfileMenu(
              iconData: Icons.groups,
              menuName: 'Community',
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
                height: 70,
                width: 330,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 203, 224, 231),
                  ),
                  borderRadius: BorderRadius.circular(10.2),
                  color: Color.fromARGB(255, 203, 224, 231),
                ),
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.headset_mic_outlined,
                      size: 40,
                      color: Colors.blue,
                    ),
                    const Text(
                      "Feel Free to Ask. We Ready to Help",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 50,
            ),
            Container(
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home_outlined, size: 30),
                  Icon(Icons.message_outlined, size: 26),
                  Icon(Icons.email_outlined, size: 26),
                  Icon(Icons.person_outlined, size: 26),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.iconData,
    required this.menuName,
  }) : super(key: key);

  final IconData iconData;
  final String menuName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const SizedBox(width: 16),
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.withOpacity(0.05),
              ),
              child: Icon(iconData, color: Colors.black87),
            ),
            const SizedBox(width: 16),
            Text(
              menuName,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        Container(
            margin: const EdgeInsets.only(right: 16),
            child: const Icon(
              Icons.arrow_forward_ios,
              size: 12,
            )),
      ],
    );
  }
}
