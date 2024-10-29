import 'package:flutter/material.dart';
import 'package:pro_practice/provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<Provider1>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Provider1>(
              builder: (context, value, child) => CircleAvatar(
                radius: 50,
                backgroundColor: value.containerColor,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                pro.green();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('green'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                pro.red();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text('red'),
            )
          ],
        ),
      ),
    );

    // return Consumer<Provider1>(
    //   builder: (context, value, child) => Scaffold(
    //     backgroundColor: value.a[value.b],
    //     body: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           ElevatedButton(
    //               onPressed: () {
    //                 pro.colorchange();
    //               },
    //               child: Text('done'))
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
