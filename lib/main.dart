import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Ask Me Anything')),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        color: Colors.blue,
        child: BallAnim(),
      ),
    );
  }
}
class BallAnim extends StatefulWidget {
  const BallAnim({super.key});

  @override
  State<BallAnim> createState() => _BallAnimState();
}

class _BallAnimState extends State<BallAnim> {
  int ballNum=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(child:
      Center(
        child: TextButton(onPressed: () {
        setState(() {
          ballNum = Random().nextInt(5)+1;
        });
      },
      child: Image.asset('images/ball$ballNum.png')
        ,)
        ,)
        ,),
    );
  }
}



