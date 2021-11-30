import 'dart:math';
import 'package:flutter/material.dart';
import 'utils.dart';
import 'itens.dart';

void main() => runApp(UIchallenge());

class UIchallenge extends StatelessWidget {
  const UIchallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Checklist UI",
      home: _Ui(),
    );
  }
}

class _Ui extends StatefulWidget {
  bool pressReset = false;
  final List list = Itens.itensState();
  final List listStr = Itens.itensStr();
  @override
  State<_Ui> createState() {
    return Ui();
  }
}

class Ui extends State<_Ui> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checklist"),
        actions: [
          TextButton(
            style: style,
            onPressed: () {
              setState(() {
                widget.pressReset = !widget.pressReset;
                ListCreate(
                  list: widget.list,
                  listStr: widget.listStr,
                );
              });
            },
            child: const Text(
              'resetar todos os itens',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      body: Center(
        child: ListCreate(
          list: widget.list,
          listStr: widget.listStr,
        ),
      ),
    );
  }
}

class ListCreate extends StatefulWidget {
  List list = [];
  List listStr = [];
  ListCreate({Key? key, required this.list, required this.listStr})
      : super(key: key);

  @override
  _ListCreateState createState() => _ListCreateState();
}

class _ListCreateState extends State<ListCreate> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, item) =>
          MyComponentRow(title: widget.listStr[item], press: widget.list[item]),
      itemCount: widget.list.length,
    );
  }
}

class MyComponentRow extends StatefulWidget {
  String title;
  bool press;

  MyComponentRow({Key? key, required this.title, required this.press})
      : super(key: key);

  @override
  State<MyComponentRow> createState() {
    return MyComponentRow2();
  }
}

class MyComponentRow2 extends State<MyComponentRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.press ? Colors.grey : Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Text(
            widget.title,
            style: const TextStyle(fontSize: 32),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Checkbox(
                value: widget.press,
                onChanged: (value) {
                  setState(() {
                    widget.press = !widget.press;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
