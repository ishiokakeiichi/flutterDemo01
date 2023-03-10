import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String title;
  const NextPage(this.title, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title), backgroundColor: Colors.teal,),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("ID"),
                ),
                Text("xxxx")
              ],
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("ID"),
                ),
                Text("xxxx")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
