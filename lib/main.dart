import 'package:app/screens/MainScreen.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
import 'models/Destination.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  /* WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController())); */
  fillList();
 
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Essaouira',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF3EBACE),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xFFD8ECF1)),
      ),
      home: const MainScreen(), //HomeScreenAdmin(),//
    );
  }
}

class HomeScreenAdmin extends StatefulWidget {
  const HomeScreenAdmin({Key? key}) : super(key: key);

  @override
  _HomeScreenAdminState createState() => _HomeScreenAdminState();
}

class _HomeScreenAdminState extends State<HomeScreenAdmin> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference groceries =
        FirebaseFirestore.instance.collection('destination');

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        title: TextField(
          controller: textController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            labelText: 'search',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          groceries.add({
            'name': (textController.text != '')
                ? textController.text
                : 'Dar Souiri ',
          });

          textController.clear();
        },
      ),
      body: Center(
        child: StreamBuilder(
            stream: groceries.orderBy('name').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              return ListView(
                children: snapshot.data!.docs.map((grocery) {
                  return Center(
                    child: Container(
                      color: Color.fromARGB(179, 148, 238, 230),
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(grocery['name']),
                        onLongPress: () {
                          grocery.reference.delete();
                        },
                      ),
                    ),
                  );
                }).toList(),
              );
            }),
      ),
    );
  }
}
