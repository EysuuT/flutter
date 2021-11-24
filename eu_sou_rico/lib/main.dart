import 'package:flutter/material.dart';

void main() {
  runApp(Banana());
}

class Banana extends StatelessWidget {
  const Banana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Text('I like bananas'),
        ),
        body: const Center(
          child: Image(
            image: NetworkImage(
                'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fweknowyourdreams.com%2Fimages%2Fbanana%2Fbanana-02.jpg&f=1&nofb=1'),
          ),
        ),
      ),
    );
  }
}
