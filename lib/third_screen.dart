import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int n = 0;

  @override
  void initState() {
    print('hoan.dv: init state');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('hoan.dv: didchange dependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('hoan.dv: build');

    // xaay duwngj giao diện đặt ở

    return const Scaffold(
      body: Center(
        child: Text('Third screen'),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant ThirdScreen oldWidget) {
    print('hoan.dv: didUpdate widget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // hủy, tránh leak bộ nhớ

    print('hoan.dv: dispose');
    super.dispose();
  }
}
