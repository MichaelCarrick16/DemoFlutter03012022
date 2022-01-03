import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        title: const Text('Listview'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Headline',
            style: TextStyle(fontSize: 100),
          ),
          SizedBox(
            height: 50,
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) =>
                    Container(
                      // set size cho từng item . Nếu horizotal thì cần width , vertical : height
                  width: 130,
                  height: 0,
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(Icons.access_alarm_rounded),
                    title: Transform.translate(
                      offset: Offset(-25, 0),
                      child: Text('Somesadas' , style: TextStyle(fontSize: 12),),
                    ),
                    onTap: () {
                      print(index.toString());
                      FocusScope.of(context).unfocus();
                    },
                  ),
                ),
              ),
            ),
          ),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
        ],
      ),
    );
  }
}
