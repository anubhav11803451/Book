import 'package:book_app/widgets/OurcolorLoader.dart';
import 'package:flutter/material.dart';

class OurSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OurColorLoader(
              colors: [
                Colors.red,
                Colors.yellow,
                Colors.green,
                Colors.blue,
              ],
              duration: Duration(milliseconds: 1200),
            ),
            Text("loading.."),
          ],
        ),
      ),
    );
  }
}
