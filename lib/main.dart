import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Password Post'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _Psw {
  final String title;
  final String id;
  final String psw;
  const _Psw(this.title, this.id, this.psw);
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titleList = ["Amazon","楽天","Yahoo",];

  List<_Psw> pswList = [
    const _Psw("Amazon", "ishioka", "passwd1"),
    const _Psw("楽天", "ishioka2", "passwd2"),
    const _Psw("Yahoo", "ishioka3", "passwd3"),
  ];

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        title: Text(widget.title,textAlign: TextAlign.end,),
      ),
      body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: Icon(Icons.vpn_key),
                  title: Text(pswList[index].title),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> NextPage(titleList[index])));
                  },
                ),
                Divider(height: 1,),
              ],
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            titleList.add("foo");
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
