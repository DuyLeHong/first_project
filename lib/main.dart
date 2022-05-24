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
  double _number = 1;

  void _incrementCounter(BuildContext context) {
    print('hoan.dv: inscreament');
    _counter++;
    _number = _number * 2;
    setState(() {});

    print('hoan.dv: counter: $_counter');

    // setState(() {
    //   _counter++;
    // });
  }

  Widget _getDecreaseButton() {
    return const Text('Decrease');
  }

  @override
  Widget build(BuildContext context) {
    print('hoan.dv: build ');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 30,
            ),
            Text('$_number'),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text('aa'),
                TextButton(
                  onPressed: () {
                    // giam counter
                    // chia so number cho 4
                    // -> muon thay doi state <-> business logic
                    _counter--;
                    // _number = (_number / 4).round();
                    _number = _number / 4;

                    setState(() {});
                  },
                  child: _getDecreaseButton(),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        side: BorderSide(
                          color: Colors.teal,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 30, left: 10, top: 100),
                  child: TextButton(
                    onPressed: () {
                      // giam counter
                      // chia so number cho 4
                      // -> muon thay doi state <-> business logic
                      _counter--;
                      // _number = (_number / 4).round();
                      _number = _number / 4;

                      setState(() {});
                    },
                    child: _getDecreaseButton(),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(
                            color: Colors.teal,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 30,
                // ),
                TextButton(
                  onPressed: () {},
                  child: Text('Reset'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.teal,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter(context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
