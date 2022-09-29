import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: MyTextWidget(),
    );
  }
}

class MyTextWidget extends StatefulWidget {
  const MyTextWidget({super.key});

  @override
  State<MyTextWidget> createState() => _MyTextWidgetState();
}

class _MyTextWidgetState extends State<MyTextWidget> {
  TextEditingController _textEditingController = TextEditingController();
  var myText = "There is your Text";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Container(
        padding: EdgeInsets.all(20),
        height: 300,
        width: 300,
        color: Colors.red,
        child: Form(
            child: Column(
          children: [
            Text(
              myText,
              style: TextStyle(color: Colors.white),
            ),
            TextFormField(),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                myText = _textEditingController.text;
                setState(() {});
              },
              child: Text("Ok"),
            ),
          ],
        )),
      ))),
    );
  }
}
