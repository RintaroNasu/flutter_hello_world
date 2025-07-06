import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NextPage extends StatelessWidget {
  final String title;
  const NextPage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 30, child: Text('ID')),
                Text(': 毎回同じです'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 30, child: Text('PW')),
                Text(': 毎回同じです'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
