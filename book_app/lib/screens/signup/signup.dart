import 'package:book_app/screens/signup/localwidgets/signUpForm.dart';
import 'package:flutter/material.dart';

class OurSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 100,),
                    BackButton(),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                OurSignUpForm(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
