import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num1 =0, num2=0, op=0; 

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  void add(){
    setState(() {
      // pass the value inputted from textfield1 and textfield2 to the variables
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      op = num1 + num2;
    });
  }

  void sub(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      op = num1 - num2;
    });
  }

  void mul(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      op = num1 * num2;
    });
  }

  void div(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      op = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$op',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Enter Num1'),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Enter Num2'),
                controller: t2,
              ),
              const SizedBox(
                height: 10,
              ),
              
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(3.0, 16.0, 3.0, 16.0),
                        primary: Colors.white,
                        backgroundColor: Colors.amberAccent,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () => add(),
                      child: const Text('+'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(3.0, 16.0, 3.0, 16.0),
                        primary: Colors.white,
                        backgroundColor: Colors.blueAccent,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () => sub(),
                      child: const Text('-'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(3.0, 16.0, 3.0, 16.0),
                        primary: Colors.white,
                        backgroundColor: Colors.amberAccent,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () => mul(),
                      child: const Text('x'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(3.0, 16.0, 3.0, 16.0),
                        primary: Colors.white,
                        backgroundColor: Colors.blueAccent,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () => div(),
                      child: const Text('/'),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}