
// ignore: must_be_immutable
import 'package:flutter/material.dart';

class test extends StatefulWidget {
  test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  int red = 0;

  List<Map<String, String>> splashscreenloop = [
    {"text": "Hi There", "image": "assets/images/logo.png"},
    {"text": "Hi There", "image": "assets/images/latourdehorloge.jpg"},
    {"text": "Hi There", "image": "assets/images/latourdehorloge.jpg"}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                    flex: 6,
                    child: PageView.builder(
                        onPageChanged: (value) {
                          setState(() {
                            red = value;
                          });
                        },
                        itemCount: splashscreenloop.length,
                        itemBuilder: (context, index) => Splashscreen(
                              image: splashscreenloop[index]["image"] ?? "",
                              text: splashscreenloop[index]["text"] ?? "",
                            ))),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(splashscreenloop.length,
                              (index) => dots(index = index)),
                        ),
                        const SizedBox(height: 50),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.only(right: 60, left: 60))),
                          child: const Text("continue"),
                        )
                      ],
                    ))
              ],
            ),
          ),
        )));
  }

  Container dots(int index) {
    return Container(
      margin: const EdgeInsets.only(right: 7),
      height: 7,
      width: red == index ? 25 : 7,
      decoration: BoxDecoration(
          color: red == index ? Colors.green : Colors.greenAccent,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

class Splashscreen extends StatelessWidget {
  const Splashscreen({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Text(text, style: const TextStyle(fontSize: 50, color: Colors.green)),
        const SizedBox(
          height: 70,
        ),
        Image.asset(
          image,
          height: 320,
          width: 220,
        )
      ],
    );
  }
}