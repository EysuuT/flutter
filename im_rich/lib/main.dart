import 'package:flutter/material.dart';

void main() {
  runApp(const Rich());
}

class Rich extends StatefulWidget {
  const Rich({Key? key}) : super(key: key);

  @override
  State<Rich> createState() => _RichState();
}

class _RichState extends State<Rich> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                    child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://pm1.narvii.com/6807/4c6c6c329270a8bc9285d1ba738eff9951b1adf0v2_hq.jpg'),
                )),
                const Padding(
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  child: const Text(
                    "Marcos Dyeimison Moreira da Silva",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(30),
                ),
                Container(
                  width: 300,
                  child: const Text(
                    "Lorem ipsum dolor sit amet consectetur adipiscing elit ac, conubia lacus libero enim purus imperdiet lectus justo diam, faucibus blandit ultricies vestibulum quisque parturient natoque",
                    style: TextStyle(fontSize: 28, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(40),
                ),
                const Text(
                  "numero de clicks: ",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
                Text(
                  '$_count',
                  style: Theme.of(context).textTheme.headline3,
                ),
                ButtonTheme(
                  minWidth: 220.0,
                  height: 80.0,
                  child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {
                      setState(() {
                        _count++;
                      });
                    },
                    child: const Text(
                      "Button",
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
