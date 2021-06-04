import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_api/src/main_binding.dart';
import 'package:whatsapp_api/src/presentation/login/login_screen.dart';
import 'package:whatsapp_api/src/presentation/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MainBinding(),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.login,
    );
  }
}

class FirstPage extends StatefulWidget {
  final String title;

  FirstPage({required this.title});

  @override
  State<StatefulWidget> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  late TextEditingController _controller;

  String number = "";

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void changeValue(String value) {
    setState(() {
      number = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.1),
        title: Text(
          this.widget.title,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Text(
            "Done",
            style: TextStyle(color: Colors.black38),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text("Por favor confirma tu número de whatsapp"),
          SizedBox(
            height: 20,
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "+1",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: TextField(
                  controller: _controller,
                  onChanged: changeValue,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone number',
                  ),
                ),
              )),
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        child: Text("EJEMPLO ---> ${this.number}"),
      ),
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
*/
