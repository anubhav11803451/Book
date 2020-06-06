import 'package:book_app/screens/createGroup/createGroup.dart';
import 'package:book_app/screens/joinGroup/joinGroup.dart';
import 'package:flutter/material.dart';

class OurNoGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _goToJoin(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OurJoinGroup(),
        ),
      );
    }

    void _goToCreate(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OurCreateGroup(),
        ),
      );
    }
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: EdgeInsets.all(80.0),
            child: Image.asset("assets/images/book.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Welcome to Book App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.grey[600],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              "Since you are not in a book app, you can select either " +
                  "to join a club or create a club.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.grey[600],
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text("Create"),
                    onPressed: () => _goToCreate(context),
                    color: Theme.of(context).canvasColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(
                        color: Theme.of(context).secondaryHeaderColor,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      "  Join  ",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => _goToJoin(context),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
