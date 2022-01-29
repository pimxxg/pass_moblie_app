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
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.purple.shade50,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Icon(
                            Icons.lock,
                            size: 80.0,
                            color: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50.0),
                          child: Text(
                            'กรุณากรอกรหัสผ่าน',
                            style:
                                TextStyle(fontSize: 40.0, color: Colors.purple),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildButton(num: 1),
                  buildButton(num: 2),
                  buildButton(num: 3),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildButton(num: 4),
                  buildButton(num: 5),
                  buildButton(num: 6),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildButton(num: 7),
                  buildButton(num: 8),
                  buildButton(num: 9),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 52.0),
                    child: buildButton(num: 0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Icon(Icons.backspace),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextButton(
                  child: Text('ลืมรหัสผ่าน'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),

        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  Widget buildButton({int? num}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.purple, width: 4.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3), // สีเงา
              offset: Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
              blurRadius: 4.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: FlatButton(
          child: Text('$num',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.purple,
              )),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () {},
        ),
      ),
    );
  }
}
