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
  //int _counter = 0;
  var _num = 0 ;

  /*void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

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
                          padding: EdgeInsets.only(top: 50.0),
                          child: Icon(
                            Icons.lock,
                            size: 80.0,
                            color: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 50.0),
                          child: Text(
                            'กรุณากรอกรหัสผ่าน',
                            style:
                                TextStyle(fontSize: 40.0, color: Colors.purple),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 20.0 ,
                              height: 20.0,
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple.shade100,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              width: 20.0 ,
                              height: 20.0,
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple.shade100,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              width: 20.0 ,
                              height: 20.0,
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple.shade100,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              width: 20.0 ,
                              height: 20.0,
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple.shade100,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              width: 20.0 ,
                              height: 20.0,
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple.shade100,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              width: 20.0 ,
                              height: 20.0,
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple.shade100,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildButton(1),
                  buildButton(2),
                  buildButton(3),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildButton(4),
                  buildButton(5),
                  buildButton(6),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildButton(7),
                  buildButton(8),
                  buildButton(9),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                      ),
                    ),
                  buildButton(0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {} ,
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        child: Icon(Icons.backspace),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  Widget buildButton(int? num) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.purple, width: 2.0),
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
          onPressed: () {
            setState(() {
              _num++ ;
            });
          },
        ),
      ),
    );
  }
}
